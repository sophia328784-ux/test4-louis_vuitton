.class abstract Lcom/clj/fastble/BleManager$BleManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BleManagerHolder"
.end annotation


# static fields
.field public static final a:Lcom/clj/fastble/BleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/clj/fastble/BleManager;

    invoke-direct {v0}, Lcom/clj/fastble/BleManager;-><init>()V

    sput-object v0, Lcom/clj/fastble/BleManager$BleManagerHolder;->a:Lcom/clj/fastble/BleManager;

    return-void
.end method
