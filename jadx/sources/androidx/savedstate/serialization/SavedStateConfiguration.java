package androidx.savedstate.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/savedstate/serialization/SavedStateConfiguration;", "", "Companion", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SavedStateConfiguration {
    public static final SavedStateConfiguration d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerializersModule f19818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f19820c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/savedstate/serialization/SavedStateConfiguration$Companion;", "", "Landroidx/savedstate/serialization/SavedStateConfiguration;", "DEFAULT", "Landroidx/savedstate/serialization/SavedStateConfiguration;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        d = new SavedStateConfiguration(SavedStateConfigurationKt.f19821a, 2, false);
    }

    public SavedStateConfiguration(SerializersModule serializersModule, int i2, boolean z) {
        this.f19818a = serializersModule;
        this.f19819b = i2;
        this.f19820c = z;
    }

    public /* synthetic */ SavedStateConfiguration(SerializersModule serializersModule, int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(serializersModule, i2, z);
    }
}
