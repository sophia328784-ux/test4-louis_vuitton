.class final synthetic Lcom/google/android/gms/internal/measurement/zzpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzlk;

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzon;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzpd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;Lcom/google/android/gms/internal/measurement/zzpd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpb;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpb;->b:Lcom/google/android/gms/internal/measurement/zzon;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzpb;->c:Lcom/google/android/gms/internal/measurement/zzpd;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpb;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzpb;->b:Lcom/google/android/gms/internal/measurement/zzon;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzpg;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzoo;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzpb;->c:Lcom/google/android/gms/internal/measurement/zzpd;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzpd;->a:Z

    return-object v0
.end method
