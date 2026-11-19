.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$b;
    }
.end annotation


# instance fields
.field public final eyewear_attributes:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;

.field public final eyewear_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;->eyewear_items:Ljava/util/List;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;->eyewear_attributes:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;

    return-void
.end method
