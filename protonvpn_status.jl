#------------------------------------------------------------------------------
# protonvpn_status - Desktop alert when ProtonVPN is not connected.
# Copyright (C) 2020  Domagoj Marsic
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Contact:
# https://github.com/dmarsic
# <dmars+github@protonmail.com>
#------------------------------------------------------------------------------

using Alert

const protonvpn = "/usr/local/bin/protonvpn"

status = `$protonvpn status`
disconnected = occursin("Disconnected", read(status, String))
if disconnected
    alert("ProtonVPN disconnected.")
end
