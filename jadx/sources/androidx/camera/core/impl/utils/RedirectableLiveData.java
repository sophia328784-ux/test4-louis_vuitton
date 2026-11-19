package androidx.camera.core.impl.utils;

import defpackage.no0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/camera/core/impl/utils/RedirectableLiveData;", "T", "Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;", "initialValue", "<init>", "(Ljava/lang/Object;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RedirectableLiveData<T> extends MappingRedirectableLiveData<T, T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2427e;

    public RedirectableLiveData(T t) {
        super(t, new no0(27));
        this.f2427e = t;
    }
}
