# include all active accounts in here
class accounts {
    include accounts::jubei
    include accounts::tracy
    if $others {
        include accounts::chestone
    }
}
