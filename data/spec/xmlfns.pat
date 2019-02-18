###############################################
# FILE: xmlfns.pat
# SUBJ: Convenience functions for XML output.
# AUTH: AM
# CREATED: 06/Nov/02 15:28:44
# NOTE:	Library pass from VisualText\data\spec dir.
###############################################

@DECL

##############
## FN: XMLHEADER
## SUBJ: Print header tags for XML file.
## RET:	None.
##############
xmlheader(
	L("out")	# Output stream.
	)
{
L("out") << "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>"
	<< "\n";
}


##############
## FN: XMLSTART
## SUBJ: Print a start XML tag.
## RET:	None.
##############
xmlstart(
	L("tag"),	# Tag name to use.
	L("out")	# Output stream.
	)
{
L("out") << "<" << L("tag") << ">\n";
}

##############
## FN: XMLEND
## SUBJ: Print an end XML tag.
## RET:	None.
##############
xmlend(
	L("tag"),	# Tag name to use.
	L("out")	# Output stream.
	)
{
L("out") << "</" << L("tag") << ">\n";
}

##############
## FN: XMLSHORT
## SUBJ: Print a one-liner XML tag.
## RET:	None.
##############
xmlshort(
	L("tag"),	# Tag name to use.
	L("val"),	# Value to output.
	L("out")	# Output stream.
	)
{
L("out")
	<< "<" << L("tag") << ">"
	<< L("val")
	<< "</" << L("tag") << ">"
	<< "\n";
}

