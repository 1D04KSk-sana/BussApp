import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class Number {
  List<LatLng> startLatLang() {
    final _startPointsList = [
      const LatLng(0, 0),
      //10 守口車庫前 1
      const LatLng(34.732959747164784, 135.5573042997483),
      //18 玉造 2
      const LatLng(34.67478085034745, 135.533731508431),
      //19 地下鉄今里 3
      const LatLng(34.668266147289984, 135.54294129945805),
      //21 天満橋 4
      const LatLng(34.69061371503603, 135.51575944322616),
      //31 天満橋 5
      const LatLng(34.69061371503603, 135.51575944322616),
      //34 守口車庫前 6
      const LatLng(34.732959747164784, 135.5573042997483),
      //35 守口車庫前 7
      const LatLng(34.732959747164784, 135.5573042997483),
      //45 総合医療センター前 8
      const LatLng(34.708065656346754, 135.52383196692364),
      //46 天満橋 9
      const LatLng(34.69061371503603, 135.51575944322616),
      //78 守口車庫前 10
      const LatLng(34.732959747164784, 135.5573042997483),
    ];
    return _startPointsList;
  }

  List<LatLng> destinationLatLng() {
    final _destinationPoints = [
      const LatLng(0, 0),
      //10 天満橋 1
      const LatLng(34.69061371503603, 135.51575944322616),
      //18 北巽バスターミナル 2
      const LatLng(34.65360888639565, 135.55561117486508),
      //19 加美東三丁目北 3
      const LatLng(34.63264141232815, 135.5737847920003),
      //21 地下鉄深江橋 4
      const LatLng(34.67899308880161, 135.5570824622671),
      //31 花博記念公園北口 5
      const LatLng(34.71623994599965, 135.56603133993826),
      //34 大阪駅前 6
      const LatLng(34.70224785277654, 135.49733589336918),
      //35 杭全 7
      const LatLng(34.63961862309295, 135.53857859385073),
      //45 諸口 8
      const LatLng(34.70457140252267, 135.57883300555125),
      //46 焼野 9
      const LatLng(34.713767572663386, 135.5824950220603),
      //78 大阪駅前 10
      const LatLng(34.70224785277654, 135.49733589336918),
    ];
    return _destinationPoints;
  }

  List<LatLng> MarkersPoints10() {
    final markers10 = [
      //地下鉄太子橋今市（西）0
      const LatLng(34.73149283620632, 135.55519037645018),
      //今市 1
      const LatLng(34.7296996665001, 135.55065088329744),
      //大宮小学校前 2
      const LatLng(34.72928339910432, 135.5473577402322),
      //中宮 3
      const LatLng(34.72930057361541, 135.54335582824035),
      //城北公園前 4
      const LatLng(34.72807902885212, 135.53740410770592),
      //生江 5
      const LatLng(34.72770147299764, 135.53440008212496),
      //赤川三丁目 6
      const LatLng(34.725559205989185, 135.53161064150285),
      //赤川一丁目（北） 7
      const LatLng(34.72345070120557, 135.53162513129115),
      //赤川一丁目（南） 8
      const LatLng(34.722083876984414, 135.53145346992963),
      //高座町三丁目 9
      const LatLng(34.71887349525608, 135.53080968331872),
      //高座町二丁目 10
      const LatLng(34.716080544128815, 135.52782870498908),
      //高座町一丁目 11
      const LatLng(34.7133717719665, 135.52969875357934),
      //地下鉄都島（都島工業高校前） 12
      const LatLng(34.71035715913584, 135.52782323285297),
      //地下鉄都島（南） 13
      const LatLng(34.70849463808772, 135.52619552541734),
      //都島中通 14
      const LatLng(34.706358479680496, 135.52789532233024),
      //都島区役所前 15
      const LatLng(34.70149838288214, 135.52873627460315),
      //東野田 16
      const LatLng(34.69748461237668, 135.52585604576788),
      //片町（北） 17
      const LatLng(34.694730257894136, 135.52707020926238),
      //片町（西） 18
      const LatLng(34.69353056461501, 135.52711312460275),
      //京阪東口 19
      const LatLng(34.6907805840845, 135.5202931172199),
    ];
    return markers10;
  }

  List<LatLng> MarkersPoints18() {
    final markers18 = [
      //真田山 0
      const LatLng(34.67148279427803, 135.53080748809646),
      //天王寺スポーツセンター 1
      const LatLng(34.67157014147242, 135.52837828013887),
      //空清町 2
      const LatLng(34.67216339268282, 135.5250957187773),
      //清水谷町 3
      const LatLng(34.67443349379478, 135.5260356322722),
      //清水谷高校前 4
      const LatLng(34.67530809211736, 135.5260677108198),
      //上本町一丁目（東） 5
      const LatLng(34.67623451687774, 135.52165825733022),
      //上本町一丁目（南） 6
      const LatLng(34.675670721620236, 135.52093146830632),
      //上本町四丁目 7
      const LatLng(34.67148919944138, 135.5205620764475),
      //上本町六丁目駅（北） 8
      const LatLng(34.667174296247424, 135.5197314129333),
      //上本町六丁目駅（近鉄前） 9
      const LatLng(34.66641964591602, 135.5198443405841),
      //上本町六丁目東 10
      const LatLng(34.66660941790456, 135.52147369031724),
      //小橋町 11
      const LatLng(34.66602646441003, 135.5245410719947),
      //鶴橋駅前（東） 12
      const LatLng(34.666173078939096, 135.53111283694633),
      //東小橋 13
      const LatLng(34.66636168499621, 135.53354583946825),
      //鶴橋二丁目 14
      const LatLng(34.66340028865194, 135.5342108611066),
      //御幸通 15
      const LatLng(34.66044282015058, 135.53453405130318),
      //桃谷駅筋 16
      const LatLng(34.6579329763354, 135.53361005926084),
      //桃谷中学校 17
      const LatLng(34.655517806282354, 135.53298704945732),
      //生野区役所前 18
      const LatLng(34.65447668516951, 135.53401608809577),
      //大池橋（西） 19
      const LatLng(34.6538956052999, 135.53956762788414),
      //大池橋（東） 20
      const LatLng(34.65376322178944, 135.54180995441936),
      //巽北一丁目 21
      const LatLng(34.65358336399161, 135.54402992781544),
      //北巽小学校前 22
      const LatLng(34.65355118506424, 135.54739642246778),
      //巽北二丁目 23
      const LatLng(34.653762539040784, 135.55278224113425),
    ];
    return markers18;
  }

  List<LatLng> MarkersPoints19() {
    final markers19 = [
      //猪飼野橋 0
      const LatLng(34.66454381852562, 135.54275035296249),
      //中川西公園前 1
      const LatLng(34.66238867244247, 135.54321604488314),
      //新今里三丁目 2
      const LatLng(34.66170917115107, 135.54442840324907),
      //生野中央病院 3
      const LatLng(34.65919824904475, 135.5461770119063),
      //巽北一丁目北 4
      const LatLng(34.655415034933654, 135.54660360565708),
      //巽北三丁目東 5
      const LatLng(34.65499610700095, 135.5548448441529),
      //地下鉄北巽 6
      const LatLng(34.652623240339835, 135.55466898469172),
      //巽中一丁目 7
      const LatLng(34.65095381623311, 135.55455741103447),
      //巽中学校前 8
      const LatLng(34.64851706729927, 135.55410531969576),
      //巽東二丁目 9
      const LatLng(34.64561375067298, 135.5537495773789),
      //地下鉄南巽（西） 10
      const LatLng(34.6435712173613, 135.55328389023288),
      //新巽中学校前 11
      const LatLng(34.64014257965755, 135.55295319424616),
      //南巽五丁目 12
      const LatLng(34.63632605376637, 135.55006679418105),
      //平野馬場一丁目 13
      const LatLng(34.63467689889101, 135.5494660941645),
      //両国橋 14
      const LatLng(34.63331528508924, 135.55249852125183),
      //JR平野駅 15
      const LatLng(34.62971318448237, 135.55169760077106),
      //JR平野駅筋 16
      const LatLng(34.627698266741355, 135.5518019323674),
      //平野宮前 17
      const LatLng(34.62635914418011, 135.55403343474677),
      //平野宮前二丁目 18
      const LatLng(34.62501870562476, 135.55626479162277),
      //平野東一丁目（西） 19
      const LatLng(34.624743378737996, 135.55904088425982),
      //加美 20
      const LatLng(34.62613125967435, 135.56417135783056),
      //加美小学校前 21
      const LatLng(34.62936298362906, 135.56384784288684),
      //加美東一丁目 22
      const LatLng(34.63019406822121, 135.56746695157477),
      //加美東三丁目 23
      const LatLng(34.63043035221417, 135.57326815047782),
    ];
    return markers19;
  }

  List<LatLng> MarkersPoints21() {
    final markers21 = [
      //京阪東口 0
      const LatLng(34.690203391320225, 135.519442800708),
      //片町（西） 1
      const LatLng(34.69310022118124, 135.52630912527303),
      //京橋駅南口 2
      const LatLng(34.6957584793889, 135.5349127669853),
      //朝日橋 3
      const LatLng(34.69638662700894, 135.5386520315432),
      //新北二丁目 4
      const LatLng(34.696511424652066, 135.54215395949677),
      //新北大橋 5
      const LatLng(34.69696640859089, 135.5471112740763),
      //極楽橋 6
      const LatLng(34.69588996184857, 135.55047715088924),
      //放出西一丁目 7
      const LatLng(34.692178730404834, 135.55397476726495),
      //放出西三丁目 8
      const LatLng(34.69204083196021, 135.55703635096586),
      //放出住宅前（南） 9
      const LatLng(34.691162645705774, 135.55930172047798),
      //諏訪二丁目 10
      const LatLng(34.68507318463986, 135.55870244704806),
      //諏訪三丁目 11
      const LatLng(34.68300875700544, 135.55844448469938),
    ];
    return markers21;
  }

  List<LatLng> MarkersPoints31() {
    final markers31 = [
      //京阪東口 0
      const LatLng(34.69018581946373, 135.51942385332944),
      //片町（西） 1
      const LatLng(34.69311000765742, 135.52630112936848),
      //東野田 2
      const LatLng(34.69617007696047, 135.5267151005619),
      //京橋北口（京橋駅筋） 3
      const LatLng(34.698721527804054, 135.533851728172),
      //蒲生桜小橋 4
      const LatLng(34.69941860288268, 135.5370344862995),
      //蒲生三丁目 5
      const LatLng(34.70014356437738, 135.5426487553933),
      //地下鉄蒲生四丁目（西 ） 6
      const LatLng(34.700320734068484, 135.54509297555006),
      //地下鉄蒲生四丁目（東） 7
      const LatLng(34.70037967292011, 135.5474581163637),
      //今福西四丁目（南） 8
      const LatLng(34.700890583691894, 135.5522192089433),
      //今福西四丁目（北） 9
      const LatLng(34.7023527127212, 135.55268937235687),
      //関目二丁目南 10
      const LatLng(34.7023527127212, 135.55268937235687),
      //関目二丁目 11
      const LatLng(34.709144010508254, 135.5528251464136),
      //関目四丁目 12
      const LatLng(34.71173105901408, 135.55285655265777),
      //新森二丁目（南） 13
      const LatLng(34.715254069666756, 135.55597339146033),
      //新森公園前 14
      const LatLng(34.7187676217537, 135.55630709286382),
      //新森二丁目（北） 15
      const LatLng(34.716424042145334, 135.55606513793273),
      //地下鉄新森古市 16
      const LatLng(34.715162015083266, 135.5582544150764),
      //緑一丁目東 17
      const LatLng(34.715247115558086, 135.56147869279758),
      //緑三丁目 18
      const LatLng(34.71521910442535, 135.56385992627943),
    ];
    return markers31;
  }

  List<LatLng> MarkersPoints34() {
    final markers34 = [
      //地下鉄太子橋今市（西） 0
      const LatLng(34.731423293040976, 135.55519153844193),
      //今市 1
      const LatLng(34.72919056817498, 135.55205833399793),
      //大宮小学校前 2
      const LatLng(34.72903578935248, 135.54739110199782),
      //中宮 3
      const LatLng(34.72864821002714, 135.5434260811351),
      //城北公園前 4
      const LatLng(34.72864821002714, 135.5434260811351),
      //生江 5
      const LatLng(34.72711189383187, 135.53433885432008),
      //赤川三丁目 6
      const LatLng(34.72545939620845, 135.5309147261998),
      //大東町 7
      const LatLng(34.722784754327186, 135.52725277997436),
      //毛馬町二丁目 8
      const LatLng(34.72096125724287, 135.5246633721953),
      //毛馬橋 9
      const LatLng(34.71834708470092, 135.52111150435303),
      //長柄東 10
      const LatLng(34.71609197112122, 135.5161263951975),
      //長柄西 11
      const LatLng(34.71540245568246, 135.5135234459455),
      //天神橋筋八丁目 12
      const LatLng(34.71484994520919, 135.50974012438928),
      //本条西二丁目 13
      const LatLng(34.71473641084693, 135.5061972498501),
      //豊崎神社前 14
      const LatLng(34.71389037765043, 135.50211848432824),
      //豊崎北 15
      const LatLng(34.71330335791625, 135.49930919593623),
      //地下鉄中津 16
      const LatLng(34.710676427098655, 135.49676452945633),
      //済生会病院前 17
      const LatLng(34.70838884305092, 135.4965674522403),
    ];
    return markers34;
  }

  List<LatLng> MarkersPoints35() {
    final markers35 = [
      //太子橋今市（西） 0
      const LatLng(34.73148401891584, 135.55483632489202),
      //今市 1
      const LatLng(34.72917726420726, 135.5520440802658),
      //今市一丁目 2
      const LatLng(34.726236084679094, 135.54988948146652),
      //千林 3
      const LatLng(34.724495832836226, 135.54946111866352),
      //森小路 4
      const LatLng(34.72066407216621, 135.54826569265043),
      //高殿七丁目 5
      const LatLng(34.71822699506163, 135.5473022772218),
      //高殿 6
      const LatLng(34.715976052324166, 135.5468322099733),
      //地下鉄関目成育 7
      const LatLng(34.712556934054035, 135.54657608576557),
      //関目一丁目 8
      const LatLng(34.70694684595616, 135.5465043009733),
      //城東区役所前 9
      const LatLng(34.702032603057646, 135.5463041498585),
      //地下鉄蒲生四丁目 10
      const LatLng(34.70075119674898, 135.54645074460248),
      //新喜多大橋 11
      const LatLng(34.69841674644084, 135.54639276152804),
      //新喜多東 12
      const LatLng(34.69575908216961, 135.546191444119),
      //鴨野（南） 13
      const LatLng(34.693477318083495, 135.54618819337176),
      //鴨野駅前 14
      const LatLng(34.69122761319834, 135.54607810172612),
      //東中浜一丁目 15
      const LatLng(34.68748470113331, 135.54553201438242),
      //中浜 16
      const LatLng(34.684721951501345, 135.54502922711472),
      //地下鉄緑橋 17
      const LatLng(34.68017435155008, 135.5445977757241),
      //東中本二丁目 18
      //const LatLng(34.67708804366417, 135.54394519628914),
      //東中本三丁目 19
      const LatLng(34.674213838550386, 135.5437819592259),
      //地下鉄今里（北） 20
      //const LatLng(34.67068038256319, 135.54331413536218),
      //地下鉄今里（南） 21
      const LatLng(34.66815712937903, 135.54297133101537),
      //猪狩野橋 22
      //const LatLng(34.664405487548315, 135.5424625608889),
      //中川西公園前 23
      const LatLng(34.66183498284178, 135.54211486690895),
      //中川二丁目 24
      const LatLng(34.658924001132306, 135.54169621680276),
      //大池中学校前 25
      //const LatLng(34.65669886866259, 135.54142560440118),
      //大池橋（北） 26
      const LatLng(34.65403406098302, 135.54107818032966),
      //生野消防署前 27
      //const LatLng(34.65125472328679, 135.5406030288845),
      //田島三丁目 28
      const LatLng(34.64829839255441, 135.54009768989542),
      //田島五丁目 29
      const LatLng(34.64544262119034, 135.539405661547),
      //田島六丁目 30
      //const LatLng(34.64391044346769, 135.53935684579508),
    ];
    return markers35;
  }

  List<LatLng> MarkersPoints45() {
    final markers45 = [
      //地下鉄都島（東） 0
      const LatLng(34.70906815466519, 135.52692629548088),
      //地下鉄本通四丁目 1
      const LatLng(34.70864154644731, 135.5318312090787),
      //都島本通五丁目 2
      const LatLng(34.70853789086863, 135.53416108530095),
      //地下鉄野江内代 3
      const LatLng(34.708430195668186, 135.53845848810107),
      //成育三丁目 4
      const LatLng(34.70822976356039, 135.54202363062473),
      //成育二丁目 5
      const LatLng(34.70741473409388, 135.54614548939634),
      //関目一丁目 6
      const LatLng(34.70715459772156, 135.54629992596588),
      //すみれ市場前 7
      const LatLng(34.70669165163029, 135.54854331877885),
      //関目二丁目南 8
      const LatLng(34.706365164709254, 135.5528850731292),
      //関目二丁目 9
      const LatLng(34.7091465280141, 135.55279668579374),
      //関目四丁目 10
      const LatLng(34.7117269784984, 135.55282659496172),
      //新森二丁目南 11
      const LatLng(34.7152565755805, 135.55594299292315),
      //地下鉄新森古市 12
      const LatLng(34.715145620708874, 135.5582168181647),
      //緑一丁目（東） 13
      const LatLng(34.71523048963097, 135.56148085057876),
      //緑三丁目 14
      //const LatLng(34.71522321719819, 135.56385409114912),
      //緑四丁目 15
      const LatLng(34.716983696063714, 135.5670548023556),
      //鶴見緑地西 16
      const LatLng(34.71483487053342, 135.56860796718067),
      //鶴見商業高校前 17
      const LatLng(34.70844860230741, 135.56833800052405),
      //鶴見緑地公園前 18
      const LatLng(34.708312722425866, 135.57189258700348),
      //鶴見区役所前 19
      const LatLng(34.7045690564919, 135.5745401721565),
      //諸口一丁目 20
      const LatLng(34.7004402100238, 135.57472139518669),
      //今津橋 21
      const LatLng(34.697080704495725, 135.57468805972164),
      //今津諸口橋 22
      const LatLng(34.69689327660649, 135.57785765673276),
      //諸口二丁目 23
      const LatLng(34.6995649080742, 135.58108293389307),
      //諸口四丁目 24
      const LatLng(34.70244520127014, 135.58159352246997),
      //諸口四丁目北 25
      const LatLng(34.70356897501488, 135.58096382768693),
    ];
    return markers45;
  }

  List<LatLng> MarkersPoints46() {
    final markers46 = [
      //京阪東口 0
      const LatLng(34.690207206570726, 135.5194261835132),
      //片町（西） 1
      const LatLng(34.69309576812818, 135.52630902950912),
      //城見一丁目 2
      const LatLng(34.69236226435921, 135.53127991600041),
      //鴨野西一丁目 3
      const LatLng(34.69275621222502, 135.53719763589865),
      //鴨野西三丁目 4
      const LatLng(34.69364638656504, 135.5423108609189),
      //鴨野（東） 5
      const LatLng(34.69375164123753, 135.54710414437952),
      //新喜多東一丁目 6
      const LatLng(34.69277619489527, 135.55046376991243),
      //放出西一丁目 7
      const LatLng(34.692307828248055, 135.55390269481555),
      //放出西三丁目 8
      const LatLng(34.692032798844394, 135.55702790501675),
      //放出住宅前（西） 9
      const LatLng(34.69213904076073, 135.55856865458782),
      //放出住宅前（東） 10
      const LatLng(34.69194496783341, 135.56018870868743),
      //放出東二丁目 11
      const LatLng(34.69186762538385, 135.56385407377695),
      //汎愛高校前 12
      const LatLng(34.6919292018019, 135.5698546972775),
      //今津中三丁目 13
      const LatLng(34.69196826042754, 135.57446790717333),
      //今津比枝神社前 14
      const LatLng(34.6920660274656, 135.57792785881654),
      //得庵駅口 15
      const LatLng(34.69322788640155, 135.5785417404929),
      //今津橋 16
      const LatLng(34.69708984071316, 135.57469228280107),
      //諸口一丁目 17
      const LatLng(34.70045106235684, 135.57474085210035),
      //鶴見区役所前 18
      const LatLng(34.7038580997372, 135.57534958041953),
      //諸口 19
      const LatLng(34.70418418588264, 135.57792514350362),
      //東諸口 20
      const LatLng(34.70470127637396, 135.581780110085),
      //浜三丁目 21
      const LatLng(34.70597454487468, 135.58359274899433),
      //浜四丁目 22
      const LatLng(34.70978508316763, 135.58272290189208),
      //焼野町一丁目 23
      const LatLng(34.71369617259266, 135.58247068970095),
    ];
    return markers46;
  }

  List<LatLng> MarkersPoints78() {
    final markers78 = [
      //地下鉄太子橋今市（西） 0
      const LatLng(34.731484034282914, 135.555148704428),
      //今市 1
      const LatLng(34.72918657175026, 135.55204832502875),
      //今市一丁目 2
      const LatLng(34.72623153957679, 135.54988969855492),
      //千林 3
      const LatLng(34.72450385069446, 135.5494720587124),
      //森小路 4
      const LatLng(34.72101024167007, 135.54768529582714),
      //大宮一丁目 5
      const LatLng(34.721167754969755, 135.5467625676103),
      //旭区役所 6
      const LatLng(34.72139051847904, 135.54447759357475),
      //旭区民センター 7
      const LatLng(34.72164179597524, 135.5427680028968),
      //旭警察署 8
      const LatLng(34.722001899072964, 135.53904200235291),
      //旭陽中学校前 9
      const LatLng(34.71966866226768, 135.5387562626604),
      //高殿二丁目 10
      const LatLng(34.71756191648394, 135.538139971984),
      //御幸町二丁目 11
      const LatLng(34.71674138046911, 135.53562263042832),
      //御幸町一丁目 12
      const LatLng(34.714631645719386, 135.53510761410752),
      //内代町 13
      const LatLng(34.71204802988715, 135.53491721012543),
      //都島本通五丁目 14
      const LatLng(34.70860007908614, 135.53451991638752),
      //都島中通三丁目 15
      const LatLng(34.70595057260543, 135.53419885870133),
      //都島中通二丁目 16
      const LatLng(34.7059431188059, 135.5307211375624),
      //都島中通 17
      const LatLng(34.706246223301854, 135.52755039447476),
      //都島区役所前 18
      const LatLng(34.70144301003319, 135.5286717712719),
      //中野町三丁目 19
      const LatLng(34.70339214340007, 135.52341771539977),
      //中野町四丁目 20
      const LatLng(34.70362863923956, 135.52147537805848),
      //源八橋 21
      const LatLng(34.7025576567684, 135.5165596371579),
      //扇町 22
      const LatLng(34.7025072482617, 135.50946969220172),
      //太融寺町 23
      const LatLng(34.702256495583335, 135.50505593275577),
      //曽根崎警察署 24
      const LatLng(34.702003288647994, 135.50073561409337),
    ];
    return markers78;
  }

  List<PolylineWayPoint> PolylinePoints10(List<LatLng> Points10) {
    List<PolylineWayPoint> polylineWayPoints10 = [];

    for (var i in Points10) {
      polylineWayPoints10
          .add(PolylineWayPoint(location: '${i.latitude},${i.longitude}'));
    }

    return polylineWayPoints10;
  }

  List<PolylineWayPoint> GetPolylinePoints(int count) {
    List<LatLng> Markers = [];
    if (count == 1) {
      Markers = MarkersPoints10();
    }
    if (count == 2) {
      Markers = MarkersPoints18();
    }
    if (count == 3) {
      Markers = MarkersPoints19();
    }
    if (count == 4) {
      Markers = MarkersPoints21();
    }
    if (count == 5) {
      Markers = MarkersPoints31();
    }
    if (count == 6) {
      Markers = MarkersPoints34();
    }
    if (count == 7) {
      Markers = MarkersPoints35();
    }
    if (count == 8) {
      Markers = MarkersPoints45();
    }
    if (count == 9) {
      Markers = MarkersPoints46();
    }
    if (count == 10) {
      Markers = MarkersPoints78();
    }

    List<PolylineWayPoint> WayPoints = PolylinePoints10(Markers);

    return WayPoints;
  }
}
