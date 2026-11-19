.class public Lcom/lp/ble/entity/BLEResponse$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lp/ble/entity/BLEResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/lp/ble/entity/BLEResponse$Builder;->a:I

    iput p3, p0, Lcom/lp/ble/entity/BLEResponse$Builder;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/lp/ble/entity/BLEResponse;
    .locals 2

    new-instance v0, Lcom/lp/ble/entity/BLEResponse;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/lp/ble/entity/BLEResponse;->d:I

    iget v1, p0, Lcom/lp/ble/entity/BLEResponse$Builder;->a:I

    iput v1, v0, Lcom/lp/ble/entity/BLEResponse;->a:I

    iget p0, p0, Lcom/lp/ble/entity/BLEResponse$Builder;->b:I

    iput p0, v0, Lcom/lp/ble/entity/BLEResponse;->b:I

    new-array p0, p0, [B

    iput-object p0, v0, Lcom/lp/ble/entity/BLEResponse;->c:[B

    return-object v0
.end method
