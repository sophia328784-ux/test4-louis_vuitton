package androidx.camera.core.impl;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface EncoderProfilesProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EncoderProfilesProvider f2297a = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f2298b = Collections.unmodifiableList(Arrays.asList(13, 10, 8, 11, 6, 5, 4, 9, 3, 7, 2));

    /* JADX INFO: renamed from: androidx.camera.core.impl.EncoderProfilesProvider$1, reason: invalid class name */
    public class AnonymousClass1 implements EncoderProfilesProvider {
        @Override // androidx.camera.core.impl.EncoderProfilesProvider
        public final boolean a(int i2) {
            return false;
        }

        @Override // androidx.camera.core.impl.EncoderProfilesProvider
        public final EncoderProfilesProxy b(int i2) {
            return null;
        }
    }

    boolean a(int i2);

    EncoderProfilesProxy b(int i2);
}
