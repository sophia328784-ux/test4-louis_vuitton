.class public Lcom/android/wiimu/config/LinkplayConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/config/LinkplayConfiguration$Builder;
    }
.end annotation


# instance fields
.field private bUpnpService:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wiimu/config/LinkplayConfiguration;->bUpnpService:Z

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/wiimu/config/LinkplayConfiguration;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public isUpnpService()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wiimu/config/LinkplayConfiguration;->bUpnpService:Z

    return p0
.end method
