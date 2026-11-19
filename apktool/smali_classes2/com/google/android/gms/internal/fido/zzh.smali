.class public abstract Lcom/google/android/gms/internal/fido/zzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/fido/zzhn;

.field public static final b:Lcom/google/android/gms/internal/fido/zzhn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/fido/zzhn;

    const-string v1, "id"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzhn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzh;->a:Lcom/google/android/gms/internal/fido/zzhn;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzhn;

    const-string v1, "type"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzhn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzh;->b:Lcom/google/android/gms/internal/fido/zzhn;

    const-string v0, "transports"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "alg"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "plat"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "rk"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "clientPin"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "up"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "uv"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "alwaysUv"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "credMgmt"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "authnrCfg"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "bioEnroll"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "largeBlobs"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "pinUvAuthToken"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "noMcGaPermissionsWithClientPin"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "ep"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "uvBioEnroll"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "uvAcfg"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "setMinPINLength"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "makeCredUvNotRqd"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "credentialMgmtPreview"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "userVerificationMgmtPreview"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "uvm"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "hmac-secret"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "multiAssertion"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    const-string v0, "google_userVerificationOrigin"

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->d(Ljava/lang/String;)V

    return-void
.end method
