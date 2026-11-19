.class public Lcom/lp/ble/config/BleSetupConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "0000180a-0000-1000-8000-00805f9b34fb"

    const-string v1, "83debca8-554f-4a43-ab65-afc8b1b02516"

    const-string v2, "01000100-4C69-6E6B-506C-617947415454"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lp/ble/config/BleSetupConfig;->a:[Ljava/lang/String;

    const-string v0, "83debca9-554f-4a43-ab65-afc8b1b02516"

    const-string v1, "CC16F6D4-1645-FA82-E340-65743AEC0747"

    const-string v2, "02000100-4C69-6E6B-506C-617943484152"

    const-string v3, "00002a37-0000-1000-8000-00805f9b34fb"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lp/ble/config/BleSetupConfig;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
