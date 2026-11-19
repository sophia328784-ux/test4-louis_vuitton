package androidx.media3.common;

import com.google.common.collect.ImmutableList;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public interface VideoFrameProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmutableList f14021a = ImmutableList.A(new AnonymousClass1());

    /* JADX INFO: renamed from: androidx.media3.common.VideoFrameProcessor$1, reason: invalid class name */
    public class AnonymousClass1 implements Effect {
    }

    public interface Factory {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface InputType {
    }

    public interface Listener {
    }
}
