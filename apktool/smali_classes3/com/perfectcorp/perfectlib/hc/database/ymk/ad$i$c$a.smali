.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;
    }
.end annotation


# instance fields
.field public final itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;->itemContent:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a$a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;-><init>()V

    return-void
.end method
