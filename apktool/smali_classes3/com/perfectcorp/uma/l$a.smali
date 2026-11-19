.class abstract Lcom/perfectcorp/uma/l$a;
.super Lcom/perfectcorp/uma/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/uma/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/perfectcorp/uma/p;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/uma/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/uma/l$a;->a:Lcom/perfectcorp/uma/p;

    return-void
.end method
