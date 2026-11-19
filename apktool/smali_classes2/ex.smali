.class public final synthetic Lex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/lightup/sdk/device/features/Feature;

.field public final synthetic c:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field public final synthetic d:B

.field public final synthetic e:[B


# direct methods
.method public synthetic constructor <init>(Lcom/lightup/sdk/device/features/Feature;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lex;->b:Lcom/lightup/sdk/device/features/Feature;

    iput-object p2, p0, Lex;->c:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput-byte p3, p0, Lex;->d:B

    iput-object p4, p0, Lex;->e:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-byte v0, p0, Lex;->d:B

    iget-object v1, p0, Lex;->e:[B

    iget-object v2, p0, Lex;->b:Lcom/lightup/sdk/device/features/Feature;

    iget-object p0, p0, Lex;->c:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v2, p0, v0, v1}, Lcom/lightup/sdk/device/features/Feature;->onNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V

    return-void
.end method
