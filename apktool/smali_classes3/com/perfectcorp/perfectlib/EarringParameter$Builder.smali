.class public final Lcom/perfectcorp/perfectlib/EarringParameter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/EarringParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/perfectcorp/perfectlib/EarringParameter;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/EarringParameter;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/EarringParameter;-><init>(Lcom/perfectcorp/perfectlib/EarringParameter$Builder;)V

    return-object v0
.end method

.method public final isLeft(Z)Lcom/perfectcorp/perfectlib/EarringParameter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/EarringParameter$Builder;->a:Z

    return-object p0
.end method
