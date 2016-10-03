%r%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%% This file is part of BibTool.
%% It is distributed under the GNU General Public License.
%% See the file COPYING for details.
%% 
%% (c) 1995-2016 Gerd Neugebauer
%% 
%% Net: gene@gerd-neugebauer.de
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 2, or (at your option)
%% any later version.
%%
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with this program; if not, write to the Free Software
%% Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Sort order for fields
%

sort.order{article =
   shorttitle
	 author
	 title
	 journal
   journaltitle
	 volume
	 number
	 pages
   abstract
   doi
   issn
   isbn
   year
	 month
}
sort.order{book =
   shorttitle
	 author
	 editor
	 title
	 publisher
	 edition
	 volume
	 series
	 address
   abstract
   doi
   issn
   isbn
   year
	 month
}
sort.order{inproceedings =
   shorttitle
	 author
	 title
	 publisher
	 editor
	 booktitle
	 volume
	 series
	 pages
   address
   location
   abstract
	 organization
   doi
   issn
   isbn
   year
	 month
}
sort.order{mastersthesis=
   shorttitle
	 author
	 title
	 school
	 address
   year
	 month
}
sort.order{phdthesis =
   shorttitle
	 author
	 title
	 school
	 address
   year
	 month
}
sort.order{proceedings =
   shorttitle
	 title
   publisher
	 editor
	 volume
	 number
	 series
	 address
   abstract
	 organization
   doi
   issn
   isbn
   year
	 month
}
sort.order{techreport =
   shorttitle
	 author
	 title
	 institution
	 number
	 address
   abstract
   year
	 month
}
sort.order{unpublished =
   shorttitle
	 author
	 title
   eventtitle
   abstract
   location
   year
	 month
}
