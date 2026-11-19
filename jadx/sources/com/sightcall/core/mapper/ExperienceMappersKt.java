package com.sightcall.core.mapper;

import android.net.Uri;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sightcall.core.experiences.Experience;
import com.sightcall.core.experiences.SightCallUnknownUrlException;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0000\u001a\f\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0002¨\u0006\u0007"}, d2 = {"toExperience", "Lcom/sightcall/core/experiences/Experience;", "Landroid/net/Uri;", "toVisualAssistance", "Lcom/sightcall/core/experiences/Experience$VisualAssistance;", "firstPath", "", "core_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ExperienceMappersKt {
    public static final String firstPath(Uri uri) {
        uri.getClass();
        try {
            return uri.getPathSegments().get(0);
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    public static final Experience toExperience(Uri uri) throws SightCallUnknownUrlException {
        uri.getClass();
        if (Intrinsics.c(firstPath(uri), "a")) {
            return new Experience.DigitalFlow(uri);
        }
        if (Intrinsics.c(firstPath(uri), "feature")) {
            return new Experience.Feature(uri);
        }
        if (Intrinsics.c(uri.getScheme(), "debug")) {
            return new Experience.DeveloperMod(uri);
        }
        if (Intrinsics.c(firstPath(uri), NBSSpanMetricUnit.Bit) || Intrinsics.c(firstPath(uri), "call") || Intrinsics.c(firstPath(uri), "app_webrtc") || Intrinsics.c(firstPath(uri), "noapp") || Intrinsics.c(firstPath(uri), "noapp_webrtc") || Intrinsics.c(firstPath(uri), "noapp_choice") || Intrinsics.c(firstPath(uri), "register") || Intrinsics.c(firstPath(uri), "mobile") || Intrinsics.c(uri.getHost(), "rtcc")) {
            return new Experience.VisualAssistance(uri);
        }
        String host = uri.getHost();
        if (host != null && StringsKt.P(host, "login", false) && Intrinsics.c(firstPath(uri), "sso")) {
            return new Experience.VisualAssistance(uri);
        }
        String host2 = uri.getHost();
        if (host2 != null && StringsKt.P(host2, "login", false)) {
            return new Experience.Login(uri);
        }
        uri.toString();
        throw new SightCallUnknownUrlException(pq0.l(uri, "unable to parse uri "), null, 2, null);
    }

    public static final Experience.VisualAssistance toVisualAssistance(Uri uri) throws SightCallUnknownUrlException {
        uri.getClass();
        Experience experience = toExperience(uri);
        if (experience instanceof Experience.VisualAssistance) {
            return (Experience.VisualAssistance) experience;
        }
        throw new SightCallUnknownUrlException(pq0.l(uri, "unable to handle this uri with visual assistance "), null, 2, null);
    }
}
