PRM_DIR="$SECONDLAW/prm-data-osx"

alias emacs="emacsclient -s $HOME/.emacs.d/server/server -n"
export ALTERNATE_EDITOR="emacs"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias pycharm="charm"

# function to sync my thesis from the original location in my home directory
# to a shared Google Drive folder
function stc {
    local thesis_drive_dir="/Volumes/GoogleDrive/My Drive/Correção Tese Fábio Fortkamp/Tese Fábio após Correções Jaime/"
    local phd_thesis_dir="$HOME/latex-writing/phd-thesis-fabiofortkamp/"
    local thesis_pdf_name="PhD-Thesis-FabioFortkamp"
    local pdf_extension=".pdf"
    local suffix="_Chaps"
    local original_thesis_pdf_file="$phd_thesis_dir/$thesis_pdf_name$pdf_extension"
    local output_thesis_pdf_file="$thesis_drive_dir/$thesis_pdf_name$suffix$1$pdf_extension"

    # this check if the Thesis folder in Google exists
    if [ -d "$thesis_drive_dir" ]; then
        echo "Thesis folder in Drive exists at $thesis_drive_dir"

        # sync all files, except hidden ones
        rsync -r --exclude=".*"  "$phd_thesis_dir" "$thesis_drive_dir"

        # if the thesis PDF file exists, copy a version of this file
        # but appending "_ChapsX", where 'X' is the argument to this function,
        # to the original name
        #
        # This is to mark clearly which chapters are included,
        # to facilitate emailing
        if [ -f  "$original_thesis_pdf_file" ]; then
            cp -iv "$original_thesis_pdf_file" "$output_thesis_pdf_file"
        fi


    fi


}
