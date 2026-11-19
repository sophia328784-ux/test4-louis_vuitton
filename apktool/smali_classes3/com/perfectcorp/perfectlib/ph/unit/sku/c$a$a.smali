.class public final Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/unit/sku/c$a$a;->c:I

    return-void
.end method
