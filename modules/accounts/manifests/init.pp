# include all active accounts in here
class accounts {
    include accounts::jubei
    if $others {
        include accounts::chestone
        include accounts::tracy
    }
}
