.class final synthetic Lcom/google/android/gms/internal/measurement/zzum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzum;->a:Lcom/google/common/util/concurrent/AbstractFuture;

    return-void
.end method


# virtual methods
.method public final synthetic call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzum;->a:Lcom/google/common/util/concurrent/AbstractFuture;

    return-object p0
.end method
