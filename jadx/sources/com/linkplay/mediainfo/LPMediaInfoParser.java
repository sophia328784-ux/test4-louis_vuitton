package com.linkplay.mediainfo;

import android.text.TextUtils;
import com.linkplay.core.model.GuiBehavior;
import com.linkplay.lpmdpkit.utils.GsonCore;
import com.linkplay.lpmdpkit.utils.LPXmlUtil;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.teleal.cling.model.ModelUtil;

/* JADX INFO: loaded from: classes2.dex */
public class LPMediaInfoParser {
    /* JADX WARN: Code duplicated, block: B:101:0x0358 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0378 A[Catch: all -> 0x0033, Exception -> 0x0393, TRY_LEAVE, TryCatch #9 {Exception -> 0x0393, blocks: (B:102:0x0370, B:104:0x0378), top: B:160:0x0370, outer: #13 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x03d4 A[Catch: all -> 0x0033, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x03ff A[Catch: all -> 0x0033, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0420  */
    /* JADX WARN: Code duplicated, block: B:122:0x0422 A[Catch: all -> 0x0033, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0428  */
    /* JADX WARN: Code duplicated, block: B:125:0x0429 A[Catch: all -> 0x0033, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:158:0x03f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x0397 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0056 A[Catch: all -> 0x0033, Exception -> 0x0082, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x008c A[Catch: all -> 0x0033, Exception -> 0x00b9, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00f7 A[Catch: all -> 0x0033, Exception -> 0x0123, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x012d A[Catch: all -> 0x0033, Exception -> 0x0159, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0161 A[Catch: all -> 0x0033, Exception -> 0x018d, TRY_LEAVE, TryCatch #1 {Exception -> 0x018d, blocks: (B:39:0x0159, B:41:0x0161), top: B:148:0x0159 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0197 A[Catch: all -> 0x0033, Exception -> 0x01af, TRY_LEAVE, TryCatch #0 {Exception -> 0x01af, blocks: (B:43:0x018f, B:45:0x0197), top: B:146:0x018f }] */
    /* JADX WARN: Code duplicated, block: B:48:0x01b7 A[Catch: all -> 0x0033, Exception -> 0x01d6, TRY_LEAVE, TryCatch #6 {Exception -> 0x01d6, blocks: (B:46:0x01af, B:48:0x01b7), top: B:154:0x01af }] */
    /* JADX WARN: Code duplicated, block: B:51:0x01de A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0201 A[Catch: all -> 0x0033, Exception -> 0x021d, TRY_LEAVE, TryCatch #12 {Exception -> 0x021d, blocks: (B:52:0x01f9, B:54:0x0201), top: B:164:0x01f9, outer: #13 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0221  */
    /* JADX WARN: Code duplicated, block: B:61:0x022b A[Catch: all -> 0x0033, Exception -> 0x0244, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0250 A[Catch: all -> 0x0033, Exception -> 0x0269, TRY_LEAVE, TryCatch #4 {Exception -> 0x0269, blocks: (B:65:0x0248, B:67:0x0250), top: B:152:0x0248 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0273 A[Catch: all -> 0x0033, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0297 A[Catch: all -> 0x02b0, Exception -> 0x02b6, TRY_LEAVE, TryCatch #23 {Exception -> 0x02b6, all -> 0x02b0, blocks: (B:74:0x028f, B:76:0x0297), top: B:185:0x028f, outer: #13 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x02c4 A[Catch: all -> 0x0033, Exception -> 0x02dc, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x02e9 A[Catch: all -> 0x0033, Exception -> 0x0301, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x030e A[Catch: all -> 0x0033, Exception -> 0x0326, TRY_LEAVE, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0333 A[Catch: all -> 0x0033, TryCatch #13 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:20:0x004e, B:22:0x0056, B:24:0x0084, B:26:0x008c, B:28:0x00b9, B:30:0x00c1, B:32:0x00ef, B:34:0x00f7, B:36:0x0125, B:38:0x012d, B:39:0x0159, B:41:0x0161, B:43:0x018f, B:45:0x0197, B:46:0x01af, B:48:0x01b7, B:49:0x01d6, B:51:0x01de, B:52:0x01f9, B:54:0x0201, B:59:0x0223, B:61:0x022b, B:65:0x0248, B:67:0x0250, B:70:0x026b, B:72:0x0273, B:80:0x02b3, B:85:0x02bc, B:87:0x02c4, B:88:0x02dc, B:89:0x02e1, B:91:0x02e9, B:92:0x0301, B:93:0x0306, B:95:0x030e, B:96:0x0326, B:98:0x0333, B:99:0x034b, B:101:0x0358, B:102:0x0370, B:104:0x0378, B:107:0x0397, B:108:0x03bd, B:110:0x03d4, B:111:0x03de, B:113:0x03f0, B:116:0x03f9, B:118:0x03ff, B:119:0x0406, B:126:0x042d, B:125:0x0429, B:122:0x0422, B:115:0x03f4, B:106:0x0393, B:129:0x0435, B:130:0x0437, B:83:0x02b8, B:57:0x021e, B:16:0x0037, B:74:0x028f, B:76:0x0297), top: B:166:0x0003, inners: #7, #8, #9, #12, #23 }] */
    public static synchronized LPMediaInfo convert2MediaInfo(String str) throws Exception {
        String strReplace;
        String strReplace2;
        String strReplace3;
        String strReplace4;
        String strReplace5;
        String strReplace6;
        String strReplace7;
        String strReplace8;
        String strReplace9;
        String strReplace10;
        String strReplace11;
        String strReplace12;
        String strGroup;
        String strGroup2;
        Matcher matcher;
        int i2;
        int i3;
        LPMediaInfo lPMediaInfo = new LPMediaInfo();
        if (TextUtils.isEmpty(str)) {
            return lPMediaInfo;
        }
        String strReplace13 = "";
        try {
            if (!str.contains("<song:description>")) {
                str = str.replaceAll("<upnp:artist\\s*[\\w\\W]*>(.*)</upnp:artist>", "<upnp:artist>$1</upnp:artist>");
                str = str.replaceAll("<upnp:albumArtURI\\s*[\\w\\W]*>(.*)</upnp:albumArtURI>", "<upnp:albumArtURI>$1</upnp:albumArtURI>");
                strReplace = "";
                if (str.contains("<dc:title>")) {
                    strReplace = LPXmlUtil.Decode(str.substring(str.indexOf("<dc:title>"), str.indexOf("</dc:title>")).replace("<dc:title>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
                strReplace2 = "";
                if (str.contains("<upnp:artist>")) {
                    strReplace2 = LPXmlUtil.Decode(str.substring(str.indexOf("<upnp:artist>"), str.indexOf("</upnp:artist>")).replace("<upnp:artist>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
                strReplace3 = "";
                if (str.contains("<upnp:album>")) {
                    strReplace3 = LPXmlUtil.Decode(str.substring(str.indexOf("<upnp:album>"), str.indexOf("</upnp:album>")).replace("<upnp:album>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
                strReplace4 = "";
                if (str.contains("<upnp:albumArtURI>")) {
                    strReplace4 = LPXmlUtil.Decode(str.substring(str.indexOf("<upnp:albumArtURI>"), str.indexOf("</upnp:albumArtURI>")).replace("<upnp:albumArtURI>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
                if (str.contains("<upnp:localAlbumArtURI>")) {
                    strReplace4 = LPXmlUtil.Decode(str.substring(str.indexOf("<upnp:localAlbumArtURI>"), str.indexOf("</upnp:localAlbumArtURI>")).replace("<upnp:localAlbumArtURI>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
                strReplace5 = "";
                if (str.contains("<song:id>")) {
                    strReplace5 = str.substring(str.indexOf("<song:id>"), str.indexOf("</song:id>")).replace("<song:id>", "");
                }
                if (str.contains("<song:controls>")) {
                    lPMediaInfo.setControlHex(Integer.parseInt(str.substring(str.indexOf("<song:controls>"), str.indexOf("</song:controls>")).replace("<song:controls>", "")));
                }
                if (str.contains("<song:subid>")) {
                    lPMediaInfo.setSubid(str.substring(str.indexOf("<song:subid>"), str.indexOf("</song:subid>")).replace("<song:subid>", ""));
                }
                if (str.contains("<dc:subtitle>")) {
                    strReplace6 = "";
                    if (str.contains("<song:quality>")) {
                        strReplace6 = str.substring(str.indexOf("<song:quality>"), str.indexOf("</song:quality>")).replace("<song:quality>", "");
                    }
                    strReplace7 = "";
                    if (str.contains("<song:actualQuality>")) {
                        strReplace7 = str.substring(str.indexOf("<song:actualQuality>"), str.indexOf("</song:actualQuality>")).replace("<song:actualQuality>", "");
                    }
                    if (str.contains("<song:atmos>")) {
                        lPMediaInfo.atmos = str.substring(str.indexOf("<song:atmos>"), str.indexOf("</song:atmos>")).replace("<song:atmos>", "");
                    }
                    if (str.contains("<song:coding_f>")) {
                    }
                    strReplace9 = ContentTree.ROOT_ID;
                    if (str.contains("<song:rate_hz>")) {
                        strReplace9 = str.substring(str.indexOf("<song:rate_hz>"), str.indexOf("</song:rate_hz>")).replace("<song:rate_hz>", "");
                    }
                    lPMediaInfo.setRate_hz(strReplace9);
                    strReplace10 = ContentTree.ROOT_ID;
                    if (str.contains("<song:format_s>")) {
                        strReplace10 = str.substring(str.indexOf("<song:format_s>"), str.indexOf("</song:format_s>")).replace("<song:format_s>", "");
                    }
                    lPMediaInfo.setFormat_s(strReplace10);
                    strReplace11 = ContentTree.ROOT_ID;
                    if (str.contains("<song:bitrate>")) {
                        strReplace11 = str.substring(str.indexOf("<song:bitrate>"), str.indexOf("</song:bitrate>")).replace("<song:bitrate>", "");
                    }
                    lPMediaInfo.setBitrate_s(strReplace11);
                    lPMediaInfo.setIsLive(str.contains("<song:isLive>") ? str.substring(str.indexOf("<song:isLive>"), str.indexOf("</song:isLive>")).replace("<song:isLive>", "") : "");
                    if (str.contains("<song:skiplimit>")) {
                    }
                    if (str.contains("<song:freemium>")) {
                        lPMediaInfo.behavior = (GuiBehavior) GsonCore.fromJson(LPXmlUtil.Decode(str.substring(str.indexOf("<song:guibehavior>"), str.indexOf("</song:guibehavior>")).replace("<song:guibehavior>", "")), GuiBehavior.class);
                        strGroup = "";
                        strGroup2 = "";
                        matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                        i2 = 1;
                        if (matcher.find()) {
                            strGroup = matcher.group(2);
                            strGroup2 = matcher.group(3);
                        }
                        lPMediaInfo.setTitle(strReplace);
                        lPMediaInfo.setArtist(strReplace2);
                        lPMediaInfo.setAlbum(strReplace3);
                        lPMediaInfo.setAlbumArtURI(strReplace4);
                        if (!TextUtils.isEmpty(strReplace5)) {
                            lPMediaInfo.setSong_id(strReplace5);
                        }
                        if (!TextUtils.isEmpty(strReplace12)) {
                            lPMediaInfo.setSkiplimit(Integer.parseInt(strReplace12));
                        }
                        lPMediaInfo.setCreator(lPMediaInfo.getArtist());
                        lPMediaInfo.setTypeDescription(strReplace13);
                        lPMediaInfo.setDuration(praseLong(strGroup));
                        lPMediaInfo.setPlayUri(strGroup2);
                        if (TextUtils.isEmpty(strReplace6)) {
                            i3 = 0;
                        } else {
                            i3 = Integer.parseInt(strReplace6);
                        }
                        if (i3 == 0) {
                            i2 = Integer.parseInt(strReplace6);
                        }
                        lPMediaInfo.setQuality(i2);
                        lPMediaInfo.setActualQuality(strReplace7);
                        return lPMediaInfo;
                    }
                    lPMediaInfo.freemium = str.substring(str.indexOf("<song:freemium>"), str.indexOf("</song:freemium>")).replace("<song:freemium>", "");
                    lPMediaInfo.behavior = (GuiBehavior) GsonCore.fromJson(LPXmlUtil.Decode(str.substring(str.indexOf("<song:guibehavior>"), str.indexOf("</song:guibehavior>")).replace("<song:guibehavior>", "")), GuiBehavior.class);
                    strGroup = "";
                    strGroup2 = "";
                    matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                    i2 = 1;
                    if (matcher.find()) {
                        strGroup = matcher.group(2);
                        strGroup2 = matcher.group(3);
                    }
                    lPMediaInfo.setTitle(strReplace);
                    lPMediaInfo.setArtist(strReplace2);
                    lPMediaInfo.setAlbum(strReplace3);
                    lPMediaInfo.setAlbumArtURI(strReplace4);
                    if (!TextUtils.isEmpty(strReplace5)) {
                        lPMediaInfo.setSong_id(strReplace5);
                    }
                    if (!TextUtils.isEmpty(strReplace12)) {
                        lPMediaInfo.setSkiplimit(Integer.parseInt(strReplace12));
                    }
                    lPMediaInfo.setCreator(lPMediaInfo.getArtist());
                    lPMediaInfo.setTypeDescription(strReplace13);
                    lPMediaInfo.setDuration(praseLong(strGroup));
                    lPMediaInfo.setPlayUri(strGroup2);
                    if (TextUtils.isEmpty(strReplace6)) {
                        i3 = 0;
                    } else {
                        i3 = Integer.parseInt(strReplace6);
                    }
                    if (i3 == 0) {
                        i2 = Integer.parseInt(strReplace6);
                    }
                    lPMediaInfo.setQuality(i2);
                    lPMediaInfo.setActualQuality(strReplace7);
                    return lPMediaInfo;
                }
                lPMediaInfo.setSubTitle(str.substring(str.indexOf("<dc:subtitle"), str.indexOf("</dc:subtitle")).replace("<dc:subtitle>", ""));
                strReplace6 = "";
                if (str.contains("<song:quality>")) {
                    strReplace6 = str.substring(str.indexOf("<song:quality>"), str.indexOf("</song:quality>")).replace("<song:quality>", "");
                }
                strReplace7 = "";
                if (str.contains("<song:actualQuality>")) {
                    strReplace7 = str.substring(str.indexOf("<song:actualQuality>"), str.indexOf("</song:actualQuality>")).replace("<song:actualQuality>", "");
                }
                if (str.contains("<song:atmos>")) {
                    lPMediaInfo.atmos = str.substring(str.indexOf("<song:atmos>"), str.indexOf("</song:atmos>")).replace("<song:atmos>", "");
                }
                if (str.contains("<song:coding_f>")) {
                }
                strReplace9 = ContentTree.ROOT_ID;
                if (str.contains("<song:rate_hz>")) {
                    strReplace9 = str.substring(str.indexOf("<song:rate_hz>"), str.indexOf("</song:rate_hz>")).replace("<song:rate_hz>", "");
                }
                lPMediaInfo.setRate_hz(strReplace9);
                strReplace10 = ContentTree.ROOT_ID;
                if (str.contains("<song:format_s>")) {
                    strReplace10 = str.substring(str.indexOf("<song:format_s>"), str.indexOf("</song:format_s>")).replace("<song:format_s>", "");
                }
                lPMediaInfo.setFormat_s(strReplace10);
                strReplace11 = ContentTree.ROOT_ID;
                if (str.contains("<song:bitrate>")) {
                    strReplace11 = str.substring(str.indexOf("<song:bitrate>"), str.indexOf("</song:bitrate>")).replace("<song:bitrate>", "");
                }
                lPMediaInfo.setBitrate_s(strReplace11);
                lPMediaInfo.setIsLive(str.contains("<song:isLive>") ? str.substring(str.indexOf("<song:isLive>"), str.indexOf("</song:isLive>")).replace("<song:isLive>", "") : "");
                if (str.contains("<song:skiplimit>")) {
                }
                if (str.contains("<song:freemium>")) {
                    lPMediaInfo.behavior = (GuiBehavior) GsonCore.fromJson(LPXmlUtil.Decode(str.substring(str.indexOf("<song:guibehavior>"), str.indexOf("</song:guibehavior>")).replace("<song:guibehavior>", "")), GuiBehavior.class);
                    strGroup = "";
                    strGroup2 = "";
                    matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                    i2 = 1;
                    if (matcher.find()) {
                        strGroup = matcher.group(2);
                        strGroup2 = matcher.group(3);
                    }
                    lPMediaInfo.setTitle(strReplace);
                    lPMediaInfo.setArtist(strReplace2);
                    lPMediaInfo.setAlbum(strReplace3);
                    lPMediaInfo.setAlbumArtURI(strReplace4);
                    if (!TextUtils.isEmpty(strReplace5)) {
                        lPMediaInfo.setSong_id(strReplace5);
                    }
                    if (!TextUtils.isEmpty(strReplace12)) {
                        lPMediaInfo.setSkiplimit(Integer.parseInt(strReplace12));
                    }
                    lPMediaInfo.setCreator(lPMediaInfo.getArtist());
                    lPMediaInfo.setTypeDescription(strReplace13);
                    lPMediaInfo.setDuration(praseLong(strGroup));
                    lPMediaInfo.setPlayUri(strGroup2);
                    if (TextUtils.isEmpty(strReplace6)) {
                        i3 = 0;
                    } else {
                        i3 = Integer.parseInt(strReplace6);
                    }
                    if (i3 == 0) {
                        i2 = Integer.parseInt(strReplace6);
                    }
                    lPMediaInfo.setQuality(i2);
                    lPMediaInfo.setActualQuality(strReplace7);
                    return lPMediaInfo;
                }
                lPMediaInfo.freemium = str.substring(str.indexOf("<song:freemium>"), str.indexOf("</song:freemium>")).replace("<song:freemium>", "");
                lPMediaInfo.behavior = (GuiBehavior) GsonCore.fromJson(LPXmlUtil.Decode(str.substring(str.indexOf("<song:guibehavior>"), str.indexOf("</song:guibehavior>")).replace("<song:guibehavior>", "")), GuiBehavior.class);
                strGroup = "";
                strGroup2 = "";
                matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                i2 = 1;
                if (matcher.find()) {
                    strGroup = matcher.group(2);
                    strGroup2 = matcher.group(3);
                }
                lPMediaInfo.setTitle(strReplace);
                lPMediaInfo.setArtist(strReplace2);
                lPMediaInfo.setAlbum(strReplace3);
                lPMediaInfo.setAlbumArtURI(strReplace4);
                if (!TextUtils.isEmpty(strReplace5)) {
                    lPMediaInfo.setSong_id(strReplace5);
                }
                if (!TextUtils.isEmpty(strReplace12)) {
                    lPMediaInfo.setSkiplimit(Integer.parseInt(strReplace12));
                }
                lPMediaInfo.setCreator(lPMediaInfo.getArtist());
                lPMediaInfo.setTypeDescription(strReplace13);
                lPMediaInfo.setDuration(praseLong(strGroup));
                lPMediaInfo.setPlayUri(strGroup2);
                if (TextUtils.isEmpty(strReplace6)) {
                    i3 = 0;
                } else {
                    i3 = Integer.parseInt(strReplace6);
                }
                if (i3 == 0) {
                    i2 = Integer.parseInt(strReplace6);
                }
                lPMediaInfo.setQuality(i2);
                lPMediaInfo.setActualQuality(strReplace7);
                return lPMediaInfo;
            }
            strReplace13 = str.substring(str.indexOf("<song:description>"), str.indexOf("</song:description>")).replace("<song:description>", "");
            try {
                str = str.replaceAll("<upnp:artist\\s*[\\w\\W]*>(.*)</upnp:artist>", "<upnp:artist>$1</upnp:artist>");
            } catch (Exception unused) {
            }
            try {
                str = str.replaceAll("<upnp:albumArtURI\\s*[\\w\\W]*>(.*)</upnp:albumArtURI>", "<upnp:albumArtURI>$1</upnp:albumArtURI>");
            } catch (Exception unused2) {
            }
            strReplace = "";
            try {
                if (str.contains("<dc:title>")) {
                    strReplace = LPXmlUtil.Decode(str.substring(str.indexOf("<dc:title>"), str.indexOf("</dc:title>")).replace("<dc:title>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
            } catch (Exception unused3) {
            }
            strReplace2 = "";
            try {
                try {
                    if (str.contains("<upnp:artist>")) {
                        strReplace2 = LPXmlUtil.Decode(str.substring(str.indexOf("<upnp:artist>"), str.indexOf("</upnp:artist>")).replace("<upnp:artist>", "")).replace("<![CDATA[", "").replace("]]>", "");
                    }
                } catch (Exception unused4) {
                }
            } catch (Exception unused5) {
                if (str.contains("<dc:creator>")) {
                    strReplace2 = LPXmlUtil.Decode(str.substring(str.indexOf("<dc:creator>"), str.indexOf("</dc:creator>")).replace("<dc:creator>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
            }
            strReplace3 = "";
            try {
                if (str.contains("<upnp:album>")) {
                    strReplace3 = LPXmlUtil.Decode(str.substring(str.indexOf("<upnp:album>"), str.indexOf("</upnp:album>")).replace("<upnp:album>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
            } catch (Exception unused6) {
            }
            strReplace4 = "";
            try {
                if (str.contains("<upnp:albumArtURI>")) {
                    strReplace4 = LPXmlUtil.Decode(str.substring(str.indexOf("<upnp:albumArtURI>"), str.indexOf("</upnp:albumArtURI>")).replace("<upnp:albumArtURI>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
            } catch (Exception unused7) {
            }
            try {
                if (str.contains("<upnp:localAlbumArtURI>")) {
                    strReplace4 = LPXmlUtil.Decode(str.substring(str.indexOf("<upnp:localAlbumArtURI>"), str.indexOf("</upnp:localAlbumArtURI>")).replace("<upnp:localAlbumArtURI>", "")).replace("<![CDATA[", "").replace("]]>", "");
                }
            } catch (Exception unused8) {
            }
            strReplace5 = "";
            try {
                if (str.contains("<song:id>")) {
                    strReplace5 = str.substring(str.indexOf("<song:id>"), str.indexOf("</song:id>")).replace("<song:id>", "");
                }
            } catch (Exception unused9) {
            }
            try {
                if (str.contains("<song:controls>")) {
                    lPMediaInfo.setControlHex(Integer.parseInt(str.substring(str.indexOf("<song:controls>"), str.indexOf("</song:controls>")).replace("<song:controls>", "")));
                }
            } catch (Exception unused10) {
            }
            if (str.contains("<song:subid>")) {
                lPMediaInfo.setSubid(str.substring(str.indexOf("<song:subid>"), str.indexOf("</song:subid>")).replace("<song:subid>", ""));
            }
            try {
                if (str.contains("<dc:subtitle>")) {
                    strReplace6 = "";
                    if (str.contains("<song:quality>")) {
                        strReplace6 = str.substring(str.indexOf("<song:quality>"), str.indexOf("</song:quality>")).replace("<song:quality>", "");
                    }
                    strReplace7 = "";
                    if (str.contains("<song:actualQuality>")) {
                        strReplace7 = str.substring(str.indexOf("<song:actualQuality>"), str.indexOf("</song:actualQuality>")).replace("<song:actualQuality>", "");
                    }
                    if (str.contains("<song:atmos>")) {
                        lPMediaInfo.atmos = str.substring(str.indexOf("<song:atmos>"), str.indexOf("</song:atmos>")).replace("<song:atmos>", "");
                    }
                    if (str.contains("<song:coding_f>")) {
                    }
                    strReplace9 = ContentTree.ROOT_ID;
                    if (str.contains("<song:rate_hz>")) {
                        strReplace9 = str.substring(str.indexOf("<song:rate_hz>"), str.indexOf("</song:rate_hz>")).replace("<song:rate_hz>", "");
                    }
                    lPMediaInfo.setRate_hz(strReplace9);
                    strReplace10 = ContentTree.ROOT_ID;
                    if (str.contains("<song:format_s>")) {
                        strReplace10 = str.substring(str.indexOf("<song:format_s>"), str.indexOf("</song:format_s>")).replace("<song:format_s>", "");
                    }
                    lPMediaInfo.setFormat_s(strReplace10);
                    strReplace11 = ContentTree.ROOT_ID;
                    if (str.contains("<song:bitrate>")) {
                        strReplace11 = str.substring(str.indexOf("<song:bitrate>"), str.indexOf("</song:bitrate>")).replace("<song:bitrate>", "");
                    }
                    lPMediaInfo.setBitrate_s(strReplace11);
                    lPMediaInfo.setIsLive(str.contains("<song:isLive>") ? str.substring(str.indexOf("<song:isLive>"), str.indexOf("</song:isLive>")).replace("<song:isLive>", "") : "");
                    if (str.contains("<song:skiplimit>")) {
                    }
                    if (str.contains("<song:freemium>")) {
                        lPMediaInfo.behavior = (GuiBehavior) GsonCore.fromJson(LPXmlUtil.Decode(str.substring(str.indexOf("<song:guibehavior>"), str.indexOf("</song:guibehavior>")).replace("<song:guibehavior>", "")), GuiBehavior.class);
                        strGroup = "";
                        strGroup2 = "";
                        matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                        i2 = 1;
                        if (matcher.find()) {
                            strGroup = matcher.group(2);
                            strGroup2 = matcher.group(3);
                        }
                        lPMediaInfo.setTitle(strReplace);
                        lPMediaInfo.setArtist(strReplace2);
                        lPMediaInfo.setAlbum(strReplace3);
                        lPMediaInfo.setAlbumArtURI(strReplace4);
                        if (!TextUtils.isEmpty(strReplace5)) {
                            lPMediaInfo.setSong_id(strReplace5);
                        }
                        if (!TextUtils.isEmpty(strReplace12)) {
                            lPMediaInfo.setSkiplimit(Integer.parseInt(strReplace12));
                        }
                        lPMediaInfo.setCreator(lPMediaInfo.getArtist());
                        lPMediaInfo.setTypeDescription(strReplace13);
                        lPMediaInfo.setDuration(praseLong(strGroup));
                        lPMediaInfo.setPlayUri(strGroup2);
                        if (TextUtils.isEmpty(strReplace6)) {
                            i3 = 0;
                        } else {
                            i3 = Integer.parseInt(strReplace6);
                        }
                        if (i3 == 0) {
                            i2 = Integer.parseInt(strReplace6);
                        }
                        lPMediaInfo.setQuality(i2);
                        lPMediaInfo.setActualQuality(strReplace7);
                        return lPMediaInfo;
                    }
                    lPMediaInfo.freemium = str.substring(str.indexOf("<song:freemium>"), str.indexOf("</song:freemium>")).replace("<song:freemium>", "");
                    lPMediaInfo.behavior = (GuiBehavior) GsonCore.fromJson(LPXmlUtil.Decode(str.substring(str.indexOf("<song:guibehavior>"), str.indexOf("</song:guibehavior>")).replace("<song:guibehavior>", "")), GuiBehavior.class);
                    strGroup = "";
                    strGroup2 = "";
                    matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                    i2 = 1;
                    if (matcher.find()) {
                        strGroup = matcher.group(2);
                        strGroup2 = matcher.group(3);
                    }
                    lPMediaInfo.setTitle(strReplace);
                    lPMediaInfo.setArtist(strReplace2);
                    lPMediaInfo.setAlbum(strReplace3);
                    lPMediaInfo.setAlbumArtURI(strReplace4);
                    if (!TextUtils.isEmpty(strReplace5)) {
                        lPMediaInfo.setSong_id(strReplace5);
                    }
                    if (!TextUtils.isEmpty(strReplace12)) {
                        lPMediaInfo.setSkiplimit(Integer.parseInt(strReplace12));
                    }
                    lPMediaInfo.setCreator(lPMediaInfo.getArtist());
                    lPMediaInfo.setTypeDescription(strReplace13);
                    lPMediaInfo.setDuration(praseLong(strGroup));
                    lPMediaInfo.setPlayUri(strGroup2);
                    if (TextUtils.isEmpty(strReplace6)) {
                        i3 = 0;
                    } else {
                        i3 = Integer.parseInt(strReplace6);
                    }
                    if (i3 == 0) {
                        i2 = Integer.parseInt(strReplace6);
                    }
                    lPMediaInfo.setQuality(i2);
                    lPMediaInfo.setActualQuality(strReplace7);
                    return lPMediaInfo;
                }
                lPMediaInfo.setSubTitle(str.substring(str.indexOf("<dc:subtitle"), str.indexOf("</dc:subtitle")).replace("<dc:subtitle>", ""));
                strReplace6 = "";
                try {
                    if (str.contains("<song:quality>")) {
                        strReplace6 = str.substring(str.indexOf("<song:quality>"), str.indexOf("</song:quality>")).replace("<song:quality>", "");
                    }
                } catch (Exception unused11) {
                    strReplace6 = ContentTree.ROOT_ID;
                }
                strReplace7 = "";
                try {
                    if (str.contains("<song:actualQuality>")) {
                        strReplace7 = str.substring(str.indexOf("<song:actualQuality>"), str.indexOf("</song:actualQuality>")).replace("<song:actualQuality>", "");
                    }
                } catch (Exception unused12) {
                    strReplace7 = "";
                }
                if (str.contains("<song:atmos>")) {
                    lPMediaInfo.atmos = str.substring(str.indexOf("<song:atmos>"), str.indexOf("</song:atmos>")).replace("<song:atmos>", "");
                }
                try {
                    strReplace8 = str.contains("<song:coding_f>") ? str.substring(str.indexOf("<song:coding_f>"), str.indexOf("</song:coding_f>")).replace("<song:coding_f>", "") : "";
                } catch (Exception unused13) {
                    strReplace8 = "";
                } finally {
                    lPMediaInfo.coding_f = "";
                }
                strReplace9 = ContentTree.ROOT_ID;
                try {
                    if (str.contains("<song:rate_hz>")) {
                        strReplace9 = str.substring(str.indexOf("<song:rate_hz>"), str.indexOf("</song:rate_hz>")).replace("<song:rate_hz>", "");
                    }
                } catch (Exception unused14) {
                }
                lPMediaInfo.setRate_hz(strReplace9);
                strReplace10 = ContentTree.ROOT_ID;
                try {
                    if (str.contains("<song:format_s>")) {
                        strReplace10 = str.substring(str.indexOf("<song:format_s>"), str.indexOf("</song:format_s>")).replace("<song:format_s>", "");
                    }
                } catch (Exception unused15) {
                }
                lPMediaInfo.setFormat_s(strReplace10);
                strReplace11 = ContentTree.ROOT_ID;
                try {
                    if (str.contains("<song:bitrate>")) {
                        strReplace11 = str.substring(str.indexOf("<song:bitrate>"), str.indexOf("</song:bitrate>")).replace("<song:bitrate>", "");
                    }
                } catch (Exception unused16) {
                }
                lPMediaInfo.setBitrate_s(strReplace11);
                lPMediaInfo.setIsLive(str.contains("<song:isLive>") ? str.substring(str.indexOf("<song:isLive>"), str.indexOf("</song:isLive>")).replace("<song:isLive>", "") : "");
                strReplace12 = str.contains("<song:skiplimit>") ? str.substring(str.indexOf("<song:skiplimit>"), str.indexOf("</song:skiplimit>")).replace("<song:skiplimit>", "") : "";
                try {
                    if (str.contains("<song:freemium>")) {
                        lPMediaInfo.behavior = (GuiBehavior) GsonCore.fromJson(LPXmlUtil.Decode(str.substring(str.indexOf("<song:guibehavior>"), str.indexOf("</song:guibehavior>")).replace("<song:guibehavior>", "")), GuiBehavior.class);
                        strGroup = "";
                        strGroup2 = "";
                        matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                        i2 = 1;
                        if (matcher.find()) {
                            strGroup = matcher.group(2);
                            strGroup2 = matcher.group(3);
                        }
                        lPMediaInfo.setTitle(strReplace);
                        lPMediaInfo.setArtist(strReplace2);
                        lPMediaInfo.setAlbum(strReplace3);
                        lPMediaInfo.setAlbumArtURI(strReplace4);
                        if (!TextUtils.isEmpty(strReplace5)) {
                            lPMediaInfo.setSong_id(strReplace5);
                        }
                        if (!TextUtils.isEmpty(strReplace12)) {
                            lPMediaInfo.setSkiplimit(Integer.parseInt(strReplace12));
                        }
                        lPMediaInfo.setCreator(lPMediaInfo.getArtist());
                        lPMediaInfo.setTypeDescription(strReplace13);
                        lPMediaInfo.setDuration(praseLong(strGroup));
                        lPMediaInfo.setPlayUri(strGroup2);
                        if (TextUtils.isEmpty(strReplace6)) {
                            i3 = 0;
                        } else {
                            i3 = Integer.parseInt(strReplace6);
                        }
                        if (i3 == 0) {
                            i2 = Integer.parseInt(strReplace6);
                        }
                        lPMediaInfo.setQuality(i2);
                        lPMediaInfo.setActualQuality(strReplace7);
                        return lPMediaInfo;
                    }
                    lPMediaInfo.freemium = str.substring(str.indexOf("<song:freemium>"), str.indexOf("</song:freemium>")).replace("<song:freemium>", "");
                    try {
                        lPMediaInfo.behavior = (GuiBehavior) GsonCore.fromJson(LPXmlUtil.Decode(str.substring(str.indexOf("<song:guibehavior>"), str.indexOf("</song:guibehavior>")).replace("<song:guibehavior>", "")), GuiBehavior.class);
                    } catch (Exception unused17) {
                    }
                    strGroup = "";
                    strGroup2 = "";
                    matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                    i2 = 1;
                    if (matcher.find()) {
                        strGroup = matcher.group(2);
                        strGroup2 = matcher.group(3);
                    }
                    lPMediaInfo.setTitle(strReplace);
                    lPMediaInfo.setArtist(strReplace2);
                    lPMediaInfo.setAlbum(strReplace3);
                    lPMediaInfo.setAlbumArtURI(strReplace4);
                    if (!TextUtils.isEmpty(strReplace5)) {
                        try {
                            lPMediaInfo.setSong_id(strReplace5);
                        } catch (Exception unused18) {
                            lPMediaInfo.setSong_id("");
                        }
                    }
                    if (!TextUtils.isEmpty(strReplace12)) {
                        lPMediaInfo.setSkiplimit(Integer.parseInt(strReplace12));
                    }
                    lPMediaInfo.setCreator(lPMediaInfo.getArtist());
                    lPMediaInfo.setTypeDescription(strReplace13);
                    lPMediaInfo.setDuration(praseLong(strGroup));
                    lPMediaInfo.setPlayUri(strGroup2);
                    if (TextUtils.isEmpty(strReplace6)) {
                        i3 = 0;
                    } else {
                        i3 = Integer.parseInt(strReplace6);
                    }
                    if (i3 == 0) {
                        i2 = Integer.parseInt(strReplace6);
                    }
                    lPMediaInfo.setQuality(i2);
                    lPMediaInfo.setActualQuality(strReplace7);
                    return lPMediaInfo;
                } catch (Exception unused19) {
                    lPMediaInfo.freemium = "";
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            strReplace13 = "";
        }
        throw th;
    }

    public static String convert2Xml(LPMediaInfo lPMediaInfo, boolean z) {
        String str;
        StringBuilder sbU = n00.u("<DIDL-Lite ".concat("xmlns:dc=\"http://purl.org/dc/elements/1.1/\" ").concat("xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" ").concat("xmlns:song=\"www.wiimu.com/song/\" ").concat("xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\"> ").concat("<upnp:class>object.item.audioItem.musicTrack</upnp:class> ").concat("<item> "), "<song:bitrate>");
        sbU.append(lPMediaInfo.getBitrate());
        sbU.append("</song:bitrate> ");
        StringBuilder sbU2 = n00.u(sbU.toString(), "<song:id>");
        sbU2.append(lPMediaInfo.getSong_id());
        sbU2.append("</song:id>");
        StringBuilder sbU3 = n00.u(sbU2.toString(), "<song:singerid>");
        sbU3.append(lPMediaInfo.getArtist_id());
        sbU3.append("</song:singerid>");
        StringBuilder sbU4 = n00.u(sbU3.toString(), "<song:albumid>");
        sbU4.append(lPMediaInfo.getAlbum_id());
        sbU4.append("</song:albumid>");
        String string = sbU4.toString();
        if (lPMediaInfo.getTotalTime() != 1) {
            str = lPMediaInfo.getTotalTime() + "";
        } else {
            str = ContentTree.ROOT_ID;
        }
        StringBuilder sbU5 = n00.u(string + "<res protocolInfo=\"http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;\" duration=\"" + str + "\">" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPMediaInfo.getPlayUri())) + "</res>", "<dc:title>");
        sbU5.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPMediaInfo.getTitle())));
        sbU5.append("</dc:title> ");
        StringBuilder sbU6 = n00.u(sbU5.toString(), "<upnp:artist>");
        sbU6.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPMediaInfo.getArtist())));
        sbU6.append("</upnp:artist> ");
        StringBuilder sbU7 = n00.u(sbU6.toString(), "<upnp:creator>");
        sbU7.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPMediaInfo.getCreator())));
        sbU7.append("</upnp:creator> ");
        StringBuilder sbU8 = n00.u(sbU7.toString(), "<upnp:album>");
        sbU8.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPMediaInfo.getAlbum())));
        sbU8.append("</upnp:album> ");
        StringBuilder sbU9 = n00.u(sbU8.toString(), "<upnp:albumArtURI>");
        sbU9.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPMediaInfo.getAlbumArtURI() != null ? lPMediaInfo.getAlbumArtURI() : "")));
        sbU9.append("</upnp:albumArtURI> ");
        return LPXmlUtil.Encode(sbU9.toString().concat("</item> ").concat("</DIDL-Lite> "));
    }

    public static synchronized LPMediaInfo convertQplayMeta2AlbumInfo(String str) {
        LPMediaInfo lPMediaInfo;
        try {
            JSONObject jSONObject = new JSONObject(str);
            lPMediaInfo = new LPMediaInfo();
            if (jSONObject.has("songID")) {
                try {
                    lPMediaInfo.setSong_id(jSONObject.getLong("songID") + "");
                } catch (Exception unused) {
                }
            }
            if (jSONObject.has("duration")) {
                lPMediaInfo.setDuration(praseLong(jSONObject.getString("duration")));
            }
            if (jSONObject.has("title")) {
                lPMediaInfo.setTitle(jSONObject.getString("title"));
            }
            if (jSONObject.has("albumArtURI")) {
                lPMediaInfo.setAlbumArtURI(jSONObject.getString("albumArtURI"));
            }
            if (jSONObject.has("album")) {
                lPMediaInfo.setAlbum(jSONObject.getString("album"));
            }
            if (jSONObject.has("creator")) {
                lPMediaInfo.setArtist(jSONObject.getString("creator"));
                lPMediaInfo.setCreator(lPMediaInfo.getArtist());
            }
            if (jSONObject.has("trackURIs")) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray("trackURIs");
                    if (jSONArray.length() > 0) {
                        lPMediaInfo.setPlayUri(jSONArray.getString(0));
                    }
                } catch (Exception unused2) {
                }
            }
        } catch (Exception unused3) {
            return null;
        }
        return lPMediaInfo;
    }

    private static long praseLong(String str) {
        if (str == null || str.trim().length() <= 0) {
            return 0L;
        }
        return str.contains(":") ? ModelUtil.a(str) * 1000 : Long.parseLong(str);
    }
}
