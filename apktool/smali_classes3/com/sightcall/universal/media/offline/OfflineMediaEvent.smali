.class public Lcom/sightcall/universal/media/offline/OfflineMediaEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentFile:I

.field private isActive:Z

.field private numberOfFiles:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->isActive:Z

    iput p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->numberOfFiles:I

    iput p3, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->currentFile:I

    return-void
.end method


# virtual methods
.method public getCurrentFile()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->currentFile:I

    return p0
.end method

.method public getNumberOfFiles()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->numberOfFiles:I

    return p0
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->isActive:Z

    return p0
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->isActive:Z

    return-void
.end method

.method public setCurrentFile(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->currentFile:I

    return-void
.end method

.method public setNumberOfFiles(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;->numberOfFiles:I

    return-void
.end method
