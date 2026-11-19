.class abstract Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BleScannerHolder"
.end annotation


# static fields
.field public static final a:Lcom/clj/fastble/scan/BleScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/clj/fastble/scan/BleScanner;

    invoke-direct {v0}, Lcom/clj/fastble/scan/BleScanner;-><init>()V

    sput-object v0, Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;->a:Lcom/clj/fastble/scan/BleScanner;

    return-void
.end method
