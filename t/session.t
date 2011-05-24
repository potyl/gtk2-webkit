use strict;
use warnings;
use Test::More;

use Gtk2 -init;
use Gtk2::WebKit;

if (Gtk2::WebKit->can("get_default_session")) {
	my $session = Gtk2::WebKit->get_default_session;
	isa_ok($session, 'Glib::Soup::Session');
}
else {
	SKIP: {
		skip "Can't find get_default_session", 1;
	}
}

done_testing;
