.class public Lcom/perfectcorp/perfectlib/FingerItem;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/perfectlib/RingPosition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/RingPosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/FingerItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/FingerItem;->b:Lcom/perfectcorp/perfectlib/RingPosition;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FingerItem;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getRingPosition()Lcom/perfectcorp/perfectlib/RingPosition;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FingerItem;->b:Lcom/perfectcorp/perfectlib/RingPosition;

    return-object p0
.end method
