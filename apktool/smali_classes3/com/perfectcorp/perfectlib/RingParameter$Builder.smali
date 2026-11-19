.class public final Lcom/perfectcorp/perfectlib/RingParameter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/RingParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/RingPosition;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/perfectcorp/perfectlib/RingParameter;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/RingParameter;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/RingParameter;-><init>(Lcom/perfectcorp/perfectlib/RingParameter$Builder;)V

    return-object v0
.end method

.method public final ringPosition(Lcom/perfectcorp/perfectlib/RingPosition;)Lcom/perfectcorp/perfectlib/RingParameter$Builder;
    .locals 1

    const-string v0, "ringPosition can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/RingParameter$Builder;->a:Lcom/perfectcorp/perfectlib/RingPosition;

    return-object p0
.end method
