.class public final synthetic Landroidx/media3/extractor/ts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;


# instance fields
.field public final synthetic b:Landroidx/media3/extractor/ts/UserDataReader;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/a;->b:Landroidx/media3/extractor/ts/UserDataReader;

    return-void
.end method


# virtual methods
.method public final f(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ts/a;->b:Landroidx/media3/extractor/ts/UserDataReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/UserDataReader;->c:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p0}, Landroidx/media3/extractor/CeaUtil;->b(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method
