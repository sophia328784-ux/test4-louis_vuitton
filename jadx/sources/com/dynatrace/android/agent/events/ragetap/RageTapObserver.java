package com.dynatrace.android.agent.events.ragetap;

import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.metrics.AndroidMetrics;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.SimpleClassNameGenerator;
import com.dynatrace.android.ragetap.detection.RageTap;
import com.dynatrace.android.ragetap.detection.RageTapListener;
import com.dynatrace.android.ragetap.detection.TapData;

/* JADX INFO: loaded from: classes2.dex */
public class RageTapObserver implements RageTapListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RageTapSegmentFactory f27540a = new RageTapSegmentFactory();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SimpleClassNameGenerator f27541b = new SimpleClassNameGenerator();

    @Override // com.dynatrace.android.ragetap.detection.RageTapListener
    public final void a(RageTap rageTap, boolean z) {
        TapData tapData = rageTap.f27696a;
        if (Dynatrace.c()) {
            String str = AndroidMetrics.a().s;
            String strA = str == null ? null : this.f27541b.a(str);
            Session sessionB = Session.b(tapData.f27709a.f27713c, !z);
            int i2 = AdkSettings.f27249k.f27252c;
            this.f27540a.getClass();
            long j2 = sessionB.f27475a;
            long j3 = tapData.f27709a.f27713c - j2;
            long j4 = (rageTap.f27697b.f27710b.f27713c - j3) - j2;
            int andIncrement = Utility.f27585a.getAndIncrement();
            RageTapSegment.Builder builder = new RageTapSegment.Builder();
            builder.f27542a = strA;
            builder.g = sessionB;
            builder.f27545e = i2;
            builder.f27546f = andIncrement;
            builder.f27543b = j3;
            builder.f27544c = j4;
            builder.d = rageTap.f27698c;
            builder.f27547h = true;
            RageTapSegment rageTapSegment = new RageTapSegment(builder);
            Core.f27287j.b();
            Core.g(rageTapSegment, rageTapSegment.p);
        }
    }
}
