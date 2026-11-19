.class public final Lcom/google/android/gms/internal/fido/zzic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzib;


# static fields
.field public static final a:Lcom/google/android/gms/internal/fido/zzaq;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/fido/zzay;

    const-string v1, "com.google.android.gms.fido"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/google/android/gms/internal/fido/zzcf;->d:I

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcz;

    const-string v1, "FIDO"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzcz;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/fido/zzay;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/util/Set;Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    const-wide/32 v3, 0x93a80

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/fido/zzay;->a(J)V

    const-string v3, "*"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    const-string v3, "https://support.google.com/accounts/answer/6208650"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/fido/zzic;->a:Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fido/zzay;->a(J)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzay;->c(Z)Lcom/google/android/gms/internal/fido/zzaq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d0()Z
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/fido/zzic;->a:Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzaq;->a()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method
