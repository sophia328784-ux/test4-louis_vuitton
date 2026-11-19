package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB3\b\u0017\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/GetPasswordOption;", "Landroidx/credentials/CredentialOption;", "", "", "allowedUserIds", "", "isAutoSelectAllowed", "Landroid/content/ComponentName;", "allowedProviders", "<init>", "(Ljava/util/Set;ZLjava/util/Set;)V", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class GetPasswordOption extends CredentialOption {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f12392h = new Companion(null);
    public final Set g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/GetPasswordOption$Companion;", "", "", "BUNDLE_KEY_ALLOWED_USER_IDS", "Ljava/lang/String;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public GetPasswordOption(Set<String> set, boolean z, Set<ComponentName> set2) {
        set.getClass();
        set2.getClass();
        f12392h.getClass();
        Bundle bundle = new Bundle();
        Set<String> set3 = set;
        bundle.putStringArrayList("androidx.credentials.BUNDLE_KEY_ALLOWED_USER_IDS", new ArrayList<>(set3));
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("androidx.credentials.BUNDLE_KEY_ALLOWED_USER_IDS", new ArrayList<>(set3));
        this(set, z, set2, bundle, bundle2, 1000);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetPasswordOption(Set<String> set) {
        this(set, false, null, 6, null);
        set.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetPasswordOption(Set<String> set, boolean z) {
        this(set, z, null, 4, null);
        set.getClass();
    }

    public /* synthetic */ GetPasswordOption(Set set, boolean z, Set set2, Bundle bundle, Bundle bundle2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, z, set2, bundle, bundle2, i2);
    }

    public GetPasswordOption(Set set, boolean z, Set set2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? EmptySet.f71770b : set, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? EmptySet.f71770b : set2);
    }

    public GetPasswordOption(Set set, boolean z, Set set2, Bundle bundle, Bundle bundle2, int i2) {
        super("android.credentials.TYPE_PASSWORD_CREDENTIAL", bundle, bundle2, false, z, set2, i2);
        this.g = set;
    }

    public GetPasswordOption() {
        this(null, false, null, 7, null);
    }
}
