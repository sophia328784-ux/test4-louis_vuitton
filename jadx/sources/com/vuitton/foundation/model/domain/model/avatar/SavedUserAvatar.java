package com.vuitton.foundation.model.domain.model.avatar;

import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB7\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/avatar/SavedUserAvatar;", "", "", "userIdentifier", "avatarId", "", "updatedDate", "<init>", "(Ljava/lang/String;Ljava/lang/String;J)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;JLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SavedUserAvatar {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f66673c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/avatar/SavedUserAvatar$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/avatar/SavedUserAvatar;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SavedUserAvatar> serializer() {
            return SavedUserAvatar$$serializer.f66674a;
        }
    }

    public /* synthetic */ SavedUserAvatar(int i2, String str, String str2, long j2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, SavedUserAvatar$$serializer.f66674a.getF19850b());
            throw null;
        }
        this.f66671a = str;
        this.f66672b = str2;
        if ((i2 & 4) == 0) {
            this.f66673c = System.currentTimeMillis();
        } else {
            this.f66673c = j2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SavedUserAvatar)) {
            return false;
        }
        SavedUserAvatar savedUserAvatar = (SavedUserAvatar) obj;
        return Intrinsics.c(this.f66671a, savedUserAvatar.f66671a) && Intrinsics.c(this.f66672b, savedUserAvatar.f66672b) && this.f66673c == savedUserAvatar.f66673c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f66673c) + fc.b(this.f66671a.hashCode() * 31, 31, this.f66672b);
    }

    public final String toString() {
        return o60.j(this.f66673c, ")", fc.s("SavedUserAvatar(userIdentifier=", this.f66671a, ", avatarId=", this.f66672b, ", updatedDate="));
    }

    public SavedUserAvatar(String str, String str2, long j2) {
        str.getClass();
        str2.getClass();
        this.f66671a = str;
        this.f66672b = str2;
        this.f66673c = j2;
    }

    public /* synthetic */ SavedUserAvatar(String str, String str2, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? System.currentTimeMillis() : j2);
    }
}
