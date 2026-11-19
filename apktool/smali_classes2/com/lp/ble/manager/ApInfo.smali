.class public Lcom/lp/ble/manager/ApInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aplist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lp/ble/manager/ApItem;",
            ">;"
        }
    .end annotation
.end field

.field private res:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAplist()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lp/ble/manager/ApItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lp/ble/manager/ApInfo;->aplist:Ljava/util/List;

    return-object p0
.end method

.method public getRes()I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/ApInfo;->res:I

    return p0
.end method

.method public setAplist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lp/ble/manager/ApItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lp/ble/manager/ApInfo;->aplist:Ljava/util/List;

    return-void
.end method

.method public setRes(I)V
    .locals 0

    iput p1, p0, Lcom/lp/ble/manager/ApInfo;->res:I

    return-void
.end method
