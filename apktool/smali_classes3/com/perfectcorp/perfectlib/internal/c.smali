.class public abstract Lcom/perfectcorp/perfectlib/internal/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/internal/c$b;,
        Lcom/perfectcorp/perfectlib/internal/c$c;
    }
.end annotation


# direct methods
.method public static a()Lcom/perfectcorp/perfectlib/internal/c;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/c$c;

    new-instance v1, Lcom/perfectcorp/perfectlib/internal/c$b;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/internal/c$b;-><init>()V

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/internal/c$c;-><init>(Lcom/perfectcorp/perfectlib/internal/c;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()V
.end method
