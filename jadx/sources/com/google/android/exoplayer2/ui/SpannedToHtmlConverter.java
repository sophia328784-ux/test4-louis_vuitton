package com.google.android.exoplayer2.ui;

import android.text.Html;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
abstract class SpannedToHtmlConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f28401a = Pattern.compile("(&#13;)?&#10;");

    public static class HtmlAndCss {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f28402a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f28403b;

        public HtmlAndCss(String str, Map map) {
            this.f28402a = str;
            this.f28403b = map;
        }
    }

    public static final class SpanInfo {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f28404e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final a f28405f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f28406a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f28407b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f28408c;
        public final String d;

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.exoplayer2.ui.a] */
        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.exoplayer2.ui.a] */
        static {
            final int i2 = 0;
            f28404e = new Comparator() { // from class: com.google.android.exoplayer2.ui.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    SpannedToHtmlConverter.SpanInfo spanInfo = (SpannedToHtmlConverter.SpanInfo) obj;
                    SpannedToHtmlConverter.SpanInfo spanInfo2 = (SpannedToHtmlConverter.SpanInfo) obj2;
                    switch (i2) {
                        case 0:
                            int iCompare = Integer.compare(spanInfo2.f28407b, spanInfo.f28407b);
                            if (iCompare != 0) {
                                return iCompare;
                            }
                            int iCompareTo = spanInfo.f28408c.compareTo(spanInfo2.f28408c);
                            return iCompareTo != 0 ? iCompareTo : spanInfo.d.compareTo(spanInfo2.d);
                        default:
                            int iCompare2 = Integer.compare(spanInfo2.f28406a, spanInfo.f28406a);
                            if (iCompare2 != 0) {
                                return iCompare2;
                            }
                            int iCompareTo2 = spanInfo2.f28408c.compareTo(spanInfo.f28408c);
                            return iCompareTo2 != 0 ? iCompareTo2 : spanInfo2.d.compareTo(spanInfo.d);
                    }
                }
            };
            final int i3 = 1;
            f28405f = new Comparator() { // from class: com.google.android.exoplayer2.ui.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    SpannedToHtmlConverter.SpanInfo spanInfo = (SpannedToHtmlConverter.SpanInfo) obj;
                    SpannedToHtmlConverter.SpanInfo spanInfo2 = (SpannedToHtmlConverter.SpanInfo) obj2;
                    switch (i3) {
                        case 0:
                            int iCompare = Integer.compare(spanInfo2.f28407b, spanInfo.f28407b);
                            if (iCompare != 0) {
                                return iCompare;
                            }
                            int iCompareTo = spanInfo.f28408c.compareTo(spanInfo2.f28408c);
                            return iCompareTo != 0 ? iCompareTo : spanInfo.d.compareTo(spanInfo2.d);
                        default:
                            int iCompare2 = Integer.compare(spanInfo2.f28406a, spanInfo.f28406a);
                            if (iCompare2 != 0) {
                                return iCompare2;
                            }
                            int iCompareTo2 = spanInfo2.f28408c.compareTo(spanInfo.f28408c);
                            return iCompareTo2 != 0 ? iCompareTo2 : spanInfo2.d.compareTo(spanInfo.d);
                    }
                }
            };
        }

        public SpanInfo(int i2, int i3, String str, String str2) {
            this.f28406a = i2;
            this.f28407b = i3;
            this.f28408c = str;
            this.d = str2;
        }
    }

    public static final class Transition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f28409a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f28410b = new ArrayList();
    }

    public static String a(CharSequence charSequence) {
        return f28401a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
