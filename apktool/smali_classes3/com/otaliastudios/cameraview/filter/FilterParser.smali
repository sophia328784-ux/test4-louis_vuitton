.class public Lcom/otaliastudios/cameraview/filter/FilterParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/otaliastudios/cameraview/filter/Filter;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/FilterParser;->a:Lcom/otaliastudios/cameraview/filter/Filter;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/filter/Filter;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/filter/FilterParser;->a:Lcom/otaliastudios/cameraview/filter/Filter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/otaliastudios/cameraview/filter/NoFilter;

    invoke-direct {p1}, Lcom/otaliastudios/cameraview/filter/NoFilter;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/filter/FilterParser;->a:Lcom/otaliastudios/cameraview/filter/Filter;

    return-void
.end method
