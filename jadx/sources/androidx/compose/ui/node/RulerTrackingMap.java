package androidx.compose.ui.node;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.layout.Ruler;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/RulerTrackingMap;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class RulerTrackingMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f9829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ruler[] f9830b = new Ruler[32];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float[] f9831c = new float[32];
    public byte[] d = new byte[32];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableScatterSet f9832e = ScatterSetKt.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableScatterSet f9833f = ScatterSetKt.a();
}
