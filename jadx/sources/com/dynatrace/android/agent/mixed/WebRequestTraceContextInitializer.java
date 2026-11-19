package com.dynatrace.android.agent.mixed;

import com.dynatrace.agent.events.TraceparentHeader;
import com.dynatrace.agent.events.TracestateHeader;
import com.dynatrace.agent.util.HexGenerator;
import com.dynatrace.android.agent.util.Utility;
import java.util.Locale;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes2.dex */
public final class WebRequestTraceContextInitializer {

    public static class TraceInitializationResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WebRequestTraceContext f27582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f27583b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f27584c;

        public TraceInitializationResult(WebRequestTraceContext webRequestTraceContext, String str, String str2) {
            this.f27582a = webRequestTraceContext;
            this.f27583b = str;
            this.f27584c = str2;
        }
    }

    public static TraceInitializationResult a(String str, String str2, boolean z) {
        TraceparentHeader traceparentHeader;
        WebRequestTraceContext webRequestTraceContext = new WebRequestTraceContext();
        if (!TracestateHeader.c()) {
            webRequestTraceContext.f27579a = null;
            webRequestTraceContext.f27580b = null;
            webRequestTraceContext.f27581c = "not_initialized";
            return new TraceInitializationResult(webRequestTraceContext, null, null);
        }
        if (!z) {
            webRequestTraceContext.f27579a = null;
            webRequestTraceContext.f27580b = null;
            webRequestTraceContext.f27581c = "disabled";
            return new TraceInitializationResult(webRequestTraceContext, null, null);
        }
        int i2 = 0;
        if (str == null) {
            traceparentHeader = null;
            break;
        }
        TraceparentHeader.f26750e.getClass();
        Regex regex = TraceparentHeader.f26751f;
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        MatchResult matchResultE = regex.e(lowerCase);
        if (matchResultE == null) {
            Utility.b("The provided traceparent header does not match the format:'00-<trace-id-32-HEXDIG>-<parent-id-16-HEXDIG>-<trace-flags-2-HEXDIG>'");
        } else {
            MatchResult matchResult = matchResultE.b().f74545a;
            String str3 = (String) matchResult.c().get(1);
            String str4 = (String) matchResult.c().get(2);
            String str5 = (String) matchResult.c().get(3);
            int i3 = 0;
            while (true) {
                if (i3 >= str3.length()) {
                    Utility.b("Trace ID in traceparent header must not be all zeros");
                } else if (str3.charAt(i3) == '0') {
                    i3++;
                } else {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= str4.length()) {
                            Utility.b("Parent ID in traceparent header must not be all zeros");
                        } else {
                            if (str4.charAt(i4) != '0') {
                                traceparentHeader = new TraceparentHeader("00", str3, str4, str5, null);
                                break;
                            }
                            i4++;
                        }
                    }
                }
            }
        }
        traceparentHeader = null;
        break;
        if (traceparentHeader == null && str != null) {
            TraceparentHeader.f26750e.getClass();
            String lowerCase2 = str.toLowerCase(Locale.ROOT);
            lowerCase2.getClass();
            if (lowerCase2.length() < 55) {
                Utility.b("Higher-version traceparent header is shorter than 55 characters, restarting trace");
            } else {
                MatchResult matchResultE2 = TraceparentHeader.g.e(lowerCase2);
                if (matchResultE2 == null) {
                    Utility.b("Higher-version traceparent header does not match the expected format:'<version-2-HEXDIG>-<trace-id-32-HEXDIG>-<parent-id-16-HEXDIG>-<flags-2-HEXDIG>'");
                } else {
                    MatchResult matchResult2 = matchResultE2.b().f74545a;
                    String str6 = (String) matchResult2.c().get(1);
                    String str7 = (String) matchResult2.c().get(2);
                    String str8 = (String) matchResult2.c().get(3);
                    int i5 = 0;
                    while (true) {
                        if (i5 >= str6.length()) {
                            Utility.b("Trace ID in higher-version traceparent header must not be all zeros");
                        } else if (str6.charAt(i5) == '0') {
                            i5++;
                        } else {
                            while (true) {
                                if (i2 >= str7.length()) {
                                    Utility.b("Parent ID in higher-version traceparent header must not be all zeros");
                                } else {
                                    if (str7.charAt(i2) != '0') {
                                        traceparentHeader = new TraceparentHeader("00", str6, str7, str8, null);
                                        break;
                                    }
                                    i2++;
                                }
                            }
                        }
                    }
                }
            }
            traceparentHeader = null;
            break;
        }
        if (traceparentHeader != null) {
            String str9 = traceparentHeader.f26753b;
            String str10 = traceparentHeader.f26754c;
            webRequestTraceContext.f27579a = str9;
            webRequestTraceContext.f27580b = str10;
            webRequestTraceContext.f27581c = "external";
            return new TraceInitializationResult(webRequestTraceContext, null, TracestateHeader.a(str2, str10));
        }
        if (str == null && str2 == null) {
            webRequestTraceContext.f27579a = HexGenerator.a(16);
            webRequestTraceContext.f27580b = HexGenerator.a(8);
            webRequestTraceContext.f27581c = "set";
            String strA = webRequestTraceContext.a();
            TracestateHeader.TracestateContext tracestateContext = TracestateHeader.f26755a;
            return new TraceInitializationResult(webRequestTraceContext, strA, TracestateHeader.a(null, webRequestTraceContext.f27580b));
        }
        webRequestTraceContext.f27579a = HexGenerator.a(16);
        webRequestTraceContext.f27580b = HexGenerator.a(8);
        webRequestTraceContext.f27581c = "invalid_set";
        String strA2 = webRequestTraceContext.a();
        TracestateHeader.TracestateContext tracestateContext2 = TracestateHeader.f26755a;
        return new TraceInitializationResult(webRequestTraceContext, strA2, TracestateHeader.a(null, webRequestTraceContext.f27580b));
    }
}
