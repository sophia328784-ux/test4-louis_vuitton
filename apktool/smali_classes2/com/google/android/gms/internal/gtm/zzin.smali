.class public final Lcom/google/android/gms/internal/gtm/zzin;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 4

    array-length p0, p2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-ne p0, v1, :cond_0

    move v3, v0

    move p0, v1

    goto :goto_0

    :cond_0
    move v3, p1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p1

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x40

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    aget-object p0, p2, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "true"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 v3, 0x42

    :cond_3
    :goto_1
    :try_start_0
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0
.end method
