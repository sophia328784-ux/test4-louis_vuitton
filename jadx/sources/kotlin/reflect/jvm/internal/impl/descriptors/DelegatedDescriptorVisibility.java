package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DelegatedDescriptorVisibility extends DescriptorVisibility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Visibility f72365a;

    public DelegatedDescriptorVisibility(Visibility visibility) {
        visibility.getClass();
        this.f72365a = visibility;
    }
}
