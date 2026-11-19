.class public abstract Lcom/perfectcorp/common/guava/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/guava/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/guava/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/common/guava/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/guava/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/common/guava/a$a;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/guava/a;->a:Lcom/perfectcorp/common/guava/a$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/guava/a;->a:Lcom/perfectcorp/common/guava/a$a;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p0
.end method
