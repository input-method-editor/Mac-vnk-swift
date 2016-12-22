import Cocoa

class InputMethod : NSObject {
    let DAU_SAC = g("/");
    let DAU_HUYEN = g("2");
    let DAU_HOI = g("3");
    let DAU_NGA = g("4");
    let DAU_NANG = g("-");
    let DAU_RAU = g("8");
    let DAU_MU = g("0");
    let DAU_NGANG = g("9");

    var CONTROL_CHAR: [UniChar: [UniChar: UniChar]] = [:]

    override init() {
        super.init()

        CONTROL_CHAR = [
            DAU_SAC: [
                g("a"): g("á"), g("à"): g("á"), g("ả"): g("á"), g("ã"): g("á"), g("ạ"): g("á"),
                g("ă"): g("ắ"), g("ằ"): g("ắ"), g("ẳ"): g("ắ"), g("ẵ"): g("ắ"), g("ặ"): g("ắ"),
                g("â"): g("ấ"), g("ầ"): g("ấ"), g("ẩ"): g("ấ"), g("ẫ"): g("ấ"), g("ậ"): g("ấ"),
                g("o"): g("ó"), g("ò"): g("ó"), g("ỏ"): g("ó"), g("õ"): g("ó"), g("ọ"): g("ó"),
                g("ô"): g("ố"), g("ồ"): g("ố"), g("ổ"): g("ố"), g("ỗ"): g("ố"), g("ộ"): g("ố"),
                g("ơ"): g("ớ"), g("ờ"): g("ớ"), g("ở"): g("ớ"), g("ỡ"): g("ớ"), g("ợ"): g("ớ"),
                g("e"): g("é"), g("è"): g("é"), g("ẻ"): g("é"), g("ẽ"): g("é"), g("ẹ"): g("é"),
                g("ê"): g("ế"), g("ề"): g("ế"), g("ể"): g("ế"), g("ễ"): g("ế"), g("ệ"): g("ế"),
                g("u"): g("ú"), g("ù"): g("ú"), g("ủ"): g("ú"), g("ũ"): g("ú"), g("ụ"): g("ú"),
                g("ư"): g("ứ"), g("ừ"): g("ứ"), g("ử"): g("ứ"), g("ữ"): g("ứ"), g("ự"): g("ứ"),
                g("i"): g("í"), g("ì"): g("í"), g("ỉ"): g("í"), g("ĩ"): g("í"), g("ị"): g("í"),
                g("y"): g("ý"), g("ỳ"): g("ý"), g("ỷ"): g("ý"), g("ỹ"): g("ý"), g("ỵ"): g("ý"),
            ],
            DAU_HUYEN: [
                g("a"): g("à"), g("á"): g("à"), g("ả"): g("à"), g("ã"): g("à"), g("ạ"): g("à"),
                g("ă"): g("ằ"), g("ắ"): g("ằ"), g("ẳ"): g("ằ"), g("ẵ"): g("ằ"), g("ặ"): g("ằ"),
                g("â"): g("ầ"), g("ấ"): g("ầ"), g("ẩ"): g("ầ"), g("ẫ"): g("ầ"), g("ậ"): g("ầ"),
                g("o"): g("ò"), g("ó"): g("ò"), g("ỏ"): g("ò"), g("õ"): g("ò"), g("ọ"): g("ò"),
                g("ô"): g("ồ"), g("ố"): g("ồ"), g("ổ"): g("ồ"), g("ỗ"): g("ồ"), g("ộ"): g("ồ"),
                g("ơ"): g("ờ"), g("ớ"): g("ờ"), g("ở"): g("ờ"), g("ỡ"): g("ờ"), g("ợ"): g("ờ"),
                g("e"): g("è"), g("é"): g("è"), g("ẻ"): g("è"), g("ẽ"): g("è"), g("ẹ"): g("è"),
                g("ê"): g("ề"), g("ế"): g("ề"), g("ể"): g("ề"), g("ễ"): g("ề"), g("ệ"): g("ề"),
                g("u"): g("ù"), g("ú"): g("ù"), g("ủ"): g("ù"), g("ũ"): g("ù"), g("ụ"): g("ù"),
                g("ư"): g("ừ"), g("ứ"): g("ừ"), g("ử"): g("ừ"), g("ữ"): g("ừ"), g("ự"): g("ừ"),
                g("i"): g("ì"), g("í"): g("ì"), g("ỉ"): g("ì"), g("ĩ"): g("ì"), g("ị"): g("ì"),
                g("y"): g("ỳ"), g("ý"): g("ỳ"), g("ỷ"): g("ỳ"), g("ỹ"): g("ỳ"), g("ỵ"): g("ỳ"),
            ],
            DAU_HOI: [
                g("a"): g("ả"), g("á"): g("ả"), g("à"): g("ả"), g("ã"): g("ả"), g("ạ"): g("ả"),
                g("ă"): g("ẳ"), g("ắ"): g("ẳ"), g("ằ"): g("ẳ"), g("ẵ"): g("ẳ"), g("ặ"): g("ẳ"),
                g("â"): g("ẩ"), g("ấ"): g("ẩ"), g("ầ"): g("ẩ"), g("ẫ"): g("ẩ"), g("ậ"): g("ẩ"),
                g("o"): g("ỏ"), g("ó"): g("ỏ"), g("ò"): g("ỏ"), g("õ"): g("ỏ"), g("ọ"): g("ỏ"),
                g("ô"): g("ổ"), g("ố"): g("ổ"), g("ồ"): g("ổ"), g("ỗ"): g("ổ"), g("ộ"): g("ổ"),
                g("ơ"): g("ở"), g("ớ"): g("ở"), g("ờ"): g("ở"), g("ỡ"): g("ở"), g("ợ"): g("ở"),
                g("e"): g("ẻ"), g("é"): g("ẻ"), g("è"): g("ẻ"), g("ẽ"): g("ẻ"), g("ẹ"): g("ẻ"),
                g("ê"): g("ể"), g("ế"): g("ể"), g("ề"): g("ể"), g("ễ"): g("ể"), g("ệ"): g("ể"),
                g("u"): g("ủ"), g("ú"): g("ủ"), g("ù"): g("ủ"), g("ũ"): g("ủ"), g("ụ"): g("ủ"),
                g("ư"): g("ử"), g("ứ"): g("ử"), g("ừ"): g("ử"), g("ữ"): g("ử"), g("ự"): g("ử"),
                g("i"): g("ỉ"), g("í"): g("ỉ"), g("ì"): g("ỉ"), g("ĩ"): g("ỉ"), g("ị"): g("ỉ"),
                g("y"): g("ỷ"), g("ý"): g("ỷ"), g("ỳ"): g("ỷ"), g("ỹ"): g("ỷ"), g("ỵ"): g("ỷ"),
            ],
            DAU_NGA: [
                g("a"): g("ã"), g("á"): g("ã"), g("à"): g("ã"), g("ả"): g("ã"), g("ạ"): g("ã"),
                g("ă"): g("ẵ"), g("ắ"): g("ẵ"), g("ằ"): g("ẵ"), g("ẳ"): g("ẵ"), g("ặ"): g("ẵ"),
                g("â"): g("ẫ"), g("ấ"): g("ẫ"), g("ầ"): g("ẫ"), g("ẩ"): g("ẫ"), g("ậ"): g("ẫ"),
                g("o"): g("õ"), g("ó"): g("õ"), g("ò"): g("õ"), g("ỏ"): g("õ"), g("ọ"): g("õ"),
                g("ô"): g("ỗ"), g("ố"): g("ỗ"), g("ồ"): g("ỗ"), g("ổ"): g("ỗ"), g("ộ"): g("ỗ"),
                g("ơ"): g("ỡ"), g("ớ"): g("ỡ"), g("ờ"): g("ỡ"), g("ở"): g("ỡ"), g("ợ"): g("ỡ"),
                g("e"): g("ẽ"), g("é"): g("ẽ"), g("è"): g("ẽ"), g("ẻ"): g("ẽ"), g("ẹ"): g("ẽ"),
                g("ê"): g("ễ"), g("ế"): g("ễ"), g("ề"): g("ễ"), g("ể"): g("ễ"), g("ệ"): g("ễ"),
                g("u"): g("ũ"), g("ú"): g("ũ"), g("ù"): g("ũ"), g("ủ"): g("ũ"), g("ụ"): g("ũ"),
                g("ư"): g("ữ"), g("ứ"): g("ữ"), g("ừ"): g("ữ"), g("ử"): g("ữ"), g("ự"): g("ữ"),
                g("i"): g("ĩ"), g("í"): g("ĩ"), g("ì"): g("ĩ"), g("ỉ"): g("ĩ"), g("ị"): g("ĩ"),
                g("y"): g("ỹ"), g("ý"): g("ỹ"), g("ỳ"): g("ỹ"), g("ỷ"): g("ỹ"), g("ỵ"): g("ỹ"),
            ],
            DAU_NANG: [
                g("a"): g("ạ"), g("á"): g("ạ"), g("à"): g("ạ"), g("ả"): g("ạ"), g("ã"): g("ạ"),
                g("ă"): g("ặ"), g("ắ"): g("ặ"), g("ằ"): g("ặ"), g("ẳ"): g("ặ"), g("ẵ"): g("ặ"),
                g("â"): g("ậ"), g("ấ"): g("ậ"), g("ầ"): g("ậ"), g("ẩ"): g("ậ"), g("ẫ"): g("ậ"),
                g("o"): g("ọ"), g("ó"): g("ọ"), g("ò"): g("ọ"), g("ỏ"): g("ọ"), g("õ"): g("ọ"),
                g("ô"): g("ộ"), g("ố"): g("ộ"), g("ồ"): g("ộ"), g("ổ"): g("ộ"), g("ỗ"): g("ộ"),
                g("ơ"): g("ợ"), g("ớ"): g("ợ"), g("ờ"): g("ợ"), g("ở"): g("ợ"), g("ỡ"): g("ợ"),
                g("e"): g("ẹ"), g("é"): g("ẹ"), g("è"): g("ẹ"), g("ẻ"): g("ẹ"), g("ẽ"): g("ẹ"),
                g("ê"): g("ệ"), g("ế"): g("ệ"), g("ề"): g("ệ"), g("ể"): g("ệ"), g("ễ"): g("ệ"),
                g("u"): g("ụ"), g("ú"): g("ụ"), g("ù"): g("ụ"), g("ủ"): g("ụ"), g("ũ"): g("ụ"),
                g("ư"): g("ự"), g("ứ"): g("ự"), g("ừ"): g("ự"), g("ử"): g("ự"), g("ữ"): g("ự"),
                g("i"): g("ị"), g("í"): g("ị"), g("ì"): g("ị"), g("ỉ"): g("ị"), g("ĩ"): g("ị"),
                g("y"): g("ỵ"), g("ý"): g("ỵ"), g("ỳ"): g("ỵ"), g("ỷ"): g("ỵ"), g("ỹ"): g("ỵ"),
            ],
            DAU_MU: [
                g("a"): g("â"), g("á"): g("ấ"), g("à"): g("ầ"), g("ả"): g("ẩ"), g("ã"): g("ẫ"),
                g("ạ"): g("ậ"), g("ă"): g("â"), g("ắ"): g("ấ"), g("ằ"): g("ầ"), g("ẳ"): g("ẩ"),
                g("ẵ"): g("ẫ"), g("ặ"): g("ậ"), g("o"): g("ô"), g("ó"): g("ố"), g("ò"): g("ồ"),
                g("ỏ"): g("ổ"), g("õ"): g("ỗ"), g("ọ"): g("ộ"), g("ơ"): g("ô"), g("ớ"): g("ố"),
                g("ờ"): g("ồ"), g("ở"): g("ổ"), g("ỡ"): g("ỗ"), g("ợ"): g("ộ"), g("e"): g("ê"),
                g("é"): g("ế"), g("è"): g("ề"), g("ẻ"): g("ể"), g("ẽ"): g("ễ"), g("ẹ"): g("ệ"),
            ],
            DAU_RAU: [
                g("a"): g("ă"), g("á"): g("ắ"), g("à"): g("ằ"), g("ả"): g("ẳ"), g("ã"): g("ẵ"),
                g("ạ"): g("ặ"), g("â"): g("ă"), g("ấ"): g("ắ"), g("ầ"): g("ằ"), g("ẩ"): g("ẳ"),
                g("ẫ"): g("ẵ"), g("ậ"): g("ặ"), g("o"): g("ơ"), g("ó"): g("ớ"), g("ò"): g("ờ"),
                g("ỏ"): g("ở"), g("õ"): g("ỡ"), g("ọ"): g("ợ"), g("ô"): g("ơ"), g("ố"): g("ớ"),
                g("ồ"): g("ờ"), g("ổ"): g("ở"), g("ỗ"): g("ỡ"), g("ộ"): g("ợ"), g("u"): g("ư"),
                g("ú"): g("ứ"), g("ù"): g("ừ"), g("ủ"): g("ử"), g("ũ"): g("ữ"), g("ụ"): g("ự"),
            ],
            DAU_NGANG: [
                g("d"): g("đ"),
            ]
        ]
    }

    func getControlMap(char: UniChar) -> [UniChar: UniChar]? {
        return CONTROL_CHAR[char];
    }

}
