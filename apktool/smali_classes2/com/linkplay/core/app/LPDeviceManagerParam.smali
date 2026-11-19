.class public Lcom/linkplay/core/app/LPDeviceManagerParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appid:Ljava/lang/String;

.field public context:Landroid/app/Application;

.field public mdnsServiceTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public registerMaintainMaxAgeSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->registerMaintainMaxAgeSeconds:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    return-void
.end method
