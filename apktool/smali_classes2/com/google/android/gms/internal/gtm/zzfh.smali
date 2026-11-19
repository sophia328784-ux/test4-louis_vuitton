.class public final Lcom/google/android/gms/internal/gtm/zzfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzdi;


# static fields
.field public static a:Lcom/google/android/gms/internal/gtm/zzbt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/google/android/gms/internal/gtm/zzfh;->a:Lcom/google/android/gms/internal/gtm/zzbt;

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 2

    const/4 p0, 0x1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    array-length v0, p2

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, p1

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, p1

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzfh;->a:Lcom/google/android/gms/internal/gtm/zzbt;

    aget-object p2, p2, p1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p2, p2, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzbt;->i:I

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzbt;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Macro cycle detected.  Current macro reference: "

    const-string v0, ". Previous macro references: "

    invoke-static {p1, p2, v0, p0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
