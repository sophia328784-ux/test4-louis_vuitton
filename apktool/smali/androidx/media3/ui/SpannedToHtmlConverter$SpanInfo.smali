.class final Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/SpannedToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanInfo"
.end annotation


# static fields
.field public static final e:Landroidx/media3/ui/i;

.field public static final f:Landroidx/media3/ui/i;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/ui/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/ui/i;-><init>(I)V

    sput-object v0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->e:Landroidx/media3/ui/i;

    new-instance v0, Landroidx/media3/ui/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/ui/i;-><init>(I)V

    sput-object v0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->f:Landroidx/media3/ui/i;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->a:I

    iput p2, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->b:I

    iput-object p3, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->d:Ljava/lang/String;

    return-void
.end method
