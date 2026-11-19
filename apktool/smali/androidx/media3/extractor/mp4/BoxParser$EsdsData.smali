.class final Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsdsData"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->b:[B

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->c:J

    iput-wide p5, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->d:J

    return-void
.end method
