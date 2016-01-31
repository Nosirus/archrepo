#!/bin/sh

repo="$(dirname "$(readlink -f "$0")")/repo"
package="$1"

repo-remove --verify --sign "${repo}/cubyte.db.tar.gz"    "$package"
repo-remove --verify --sign "${repo}/cubyte.files.tar.gz" "$package"
rm "${repo}/${package}-"*.pkg.tar.*

