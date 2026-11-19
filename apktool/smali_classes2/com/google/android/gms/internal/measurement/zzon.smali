.class final Lcom/google/android/gms/internal/measurement/zzon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/base/Function;

.field public final b:Z

.field public final c:Lcom/google/common/collect/ImmutableSet;

.field public volatile d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Function;ZLcom/google/common/collect/ImmutableSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzon;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzon;->a:Lcom/google/common/base/Function;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzon;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzon;->c:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method
