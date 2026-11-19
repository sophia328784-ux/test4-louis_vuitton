package androidx.media3.ui;

import android.text.Html;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
abstract class SpannedToHtmlConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f18043a = Pattern.compile("(&#13;)?&#10;");

    public static class HtmlAndCss {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f18044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f18045b;

        public HtmlAndCss(String str, Map map) {
            this.f18044a = str;
            this.f18045b = map;
        }
    }

    public static final class SpanInfo {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final i f18046e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final i f18047f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18048a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f18050c;
        public final String d;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.ui.i] */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.ui.i] */
        static {
            final int i2 = 0;
            f18046e = new Comparator() { // from class: androidx.media3.ui.i
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    SpannedToHtmlConverter.SpanInfo spanInfo = (SpannedToHtmlConverter.SpanInfo) obj;
                    SpannedToHtmlConverter.SpanInfo spanInfo2 = (SpannedToHtmlConverter.SpanInfo) obj2;
                    switch (i2) {
                        case 0:
                            int iCompare = Integer.compare(spanInfo2.f18049b, spanInfo.f18049b);
                            if (iCompare != 0) {
                                return iCompare;
                            }
                            int iCompareTo = spanInfo.f18050c.compareTo(spanInfo2.f18050c);
                            return iCompareTo != 0 ? iCompareTo : spanInfo.d.compareTo(spanInfo2.d);
                        default:
                            int iCompare2 = Integer.compare(spanInfo2.f18048a, spanInfo.f18048a);
                            if (iCompare2 != 0) {
                                return iCompare2;
                            }
                            int iCompareTo2 = spanInfo2.f18050c.compareTo(spanInfo.f18050c);
                            return iCompareTo2 != 0 ? iCompareTo2 : spanInfo2.d.compareTo(spanInfo.d);
                    }
                }
            };
            final int i3 = 1;
            f18047f = new Comparator() { // from class: androidx.media3.ui.i
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    SpannedToHtmlConverter.SpanInfo spanInfo = (SpannedToHtmlConverter.SpanInfo) obj;
                    SpannedToHtmlConverter.SpanInfo spanInfo2 = (SpannedToHtmlConverter.SpanInfo) obj2;
                    switch (i3) {
                        case 0:
                            int iCompare = Integer.compare(spanInfo2.f18049b, spanInfo.f18049b);
                            if (iCompare != 0) {
                                return iCompare;
                            }
                            int iCompareTo = spanInfo.f18050c.compareTo(spanInfo2.f18050c);
                            return iCompareTo != 0 ? iCompareTo : spanInfo.d.compareTo(spanInfo2.d);
                        default:
                            int iCompare2 = Integer.compare(spanInfo2.f18048a, spanInfo.f18048a);
                            if (iCompare2 != 0) {
                                return iCompare2;
                            }
                            int iCompareTo2 = spanInfo2.f18050c.compareTo(spanInfo.f18050c);
                            return iCompareTo2 != 0 ? iCompareTo2 : spanInfo2.d.compareTo(spanInfo.d);
                    }
                }
            };
        }

        public SpanInfo(int i2, int i3, String str, String str2) {
            this.f18048a = i2;
            this.f18049b = i3;
            this.f18050c = str;
            this.d = str2;
        }
    }

    public static final class Transition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f18051a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f18052b = new ArrayList();
    }

    public static String a(CharSequence charSequence) {
        return f18043a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
