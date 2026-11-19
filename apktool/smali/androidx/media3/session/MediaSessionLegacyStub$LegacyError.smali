.class final Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LegacyError"
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ZILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->a:Z

    iput p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->b:I

    iput-object p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->c:Ljava/lang/String;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    iput-object p4, p0, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->d:Landroid/os/Bundle;

    return-void
.end method
