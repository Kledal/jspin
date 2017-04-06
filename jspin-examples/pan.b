	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		;
		;
		
	case 7: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */

	case 8: // STATE 1
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 2
		;
	/* 0 */	((P0 *)this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 10: // STATE 5
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 6
		;
		now.n = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 7
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;
	}

