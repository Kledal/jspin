#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - test:17 - [(run P())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - test:18 - [(run P())] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - test:20 - [((_nr_pr==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 5 - test:21 - [assert((n!=15))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		spin_assert((((int)now.n)!=15), "(n!=15)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 6 - test:22 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 8: // STATE 1 - test:5 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 1;
#ifdef VAR_RANGES
		logval("P:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 2 - test:7 - [((i>10))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)this)->i)>10)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P0 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - test:9 - [temp = (n+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->temp);
		((P0 *)this)->temp = (((int)now.n)+1);
#ifdef VAR_RANGES
		logval("P:temp", ((int)((P0 *)this)->temp));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 6 - test:10 - [n = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.n);
		now.n = ((int)((P0 *)this)->temp);
#ifdef VAR_RANGES
		logval("n", ((int)now.n));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 7 - test:11 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = (((int)((P0 *)this)->i)+1);
#ifdef VAR_RANGES
		logval("P:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - test:13 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[0][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

