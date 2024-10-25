static const char norm_fg[] = "#9baabe";
static const char norm_bg[] = "#0c0f18";
static const char norm_border[] = "#6c7685";

static const char sel_fg[] = "#9baabe";
static const char sel_bg[] = "#614C68";
static const char sel_border[] = "#9baabe";

static const char urg_fg[] = "#9baabe";
static const char urg_bg[] = "#234E64";
static const char urg_border[] = "#234E64";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
