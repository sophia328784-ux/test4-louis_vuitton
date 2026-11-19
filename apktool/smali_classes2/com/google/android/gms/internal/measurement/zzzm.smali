.class public final Lcom/google/android/gms/internal/measurement/zzzm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/gms/internal/measurement/zzzp;

.field public static final f:Lcom/google/android/gms/internal/measurement/zzzo;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Lcom/google/android/gms/internal/measurement/zzzp;

.field public d:Lcom/google/android/gms/internal/measurement/zzzo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzm;->e:Lcom/google/android/gms/internal/measurement/zzzp;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzm;->f:Lcom/google/android/gms/internal/measurement/zzzo;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->d:Lcom/google/android/gms/internal/measurement/zzzo;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzt;->a:Lcom/google/android/gms/internal/measurement/zzzp;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->c:Lcom/google/android/gms/internal/measurement/zzzp;

    return-void
.end method
