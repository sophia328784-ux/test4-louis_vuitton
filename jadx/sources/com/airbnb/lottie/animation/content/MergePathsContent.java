package com.airbnb.lottie.animation.content;

import android.graphics.Matrix;
import android.graphics.Path;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class MergePathsContent implements PathContent, GreedyContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f21838a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f21839b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f21840c = new Path();
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MergePaths f21841e;

    /* JADX INFO: renamed from: com.airbnb.lottie.animation.content.MergePathsContent$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f21842a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f21842a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21842a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21842a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21842a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21842a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public MergePathsContent(MergePaths mergePaths) {
        mergePaths.getClass();
        this.f21841e = mergePaths;
    }

    public final void a(Path.Op op) {
        Path path = this.f21839b;
        path.reset();
        Path path2 = this.f21838a;
        path2.reset();
        ArrayList arrayList = this.d;
        for (int size = arrayList.size() - 1; size >= 1; size--) {
            PathContent pathContent = (PathContent) arrayList.get(size);
            if (pathContent instanceof ContentGroup) {
                ContentGroup contentGroup = (ContentGroup) pathContent;
                ArrayList arrayList2 = (ArrayList) contentGroup.h();
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    Path path3 = ((PathContent) arrayList2.get(size2)).getPath();
                    Matrix matrixE = contentGroup.d;
                    TransformKeyframeAnimation transformKeyframeAnimation = contentGroup.l;
                    if (transformKeyframeAnimation != null) {
                        matrixE = transformKeyframeAnimation.e();
                    } else {
                        matrixE.reset();
                    }
                    path3.transform(matrixE);
                    path.addPath(path3);
                }
            } else {
                path.addPath(pathContent.getPath());
            }
        }
        int i2 = 0;
        PathContent pathContent2 = (PathContent) arrayList.get(0);
        if (pathContent2 instanceof ContentGroup) {
            ContentGroup contentGroup2 = (ContentGroup) pathContent2;
            List listH = contentGroup2.h();
            while (true) {
                ArrayList arrayList3 = (ArrayList) listH;
                if (i2 >= arrayList3.size()) {
                    break;
                }
                Path path4 = ((PathContent) arrayList3.get(i2)).getPath();
                Matrix matrixE2 = contentGroup2.d;
                TransformKeyframeAnimation transformKeyframeAnimation2 = contentGroup2.l;
                if (transformKeyframeAnimation2 != null) {
                    matrixE2 = transformKeyframeAnimation2.e();
                } else {
                    matrixE2.reset();
                }
                path4.transform(matrixE2);
                path2.addPath(path4);
                i2++;
            }
        } else {
            path2.set(pathContent2.getPath());
        }
        this.f21840c.op(path2, path, op);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.d;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((PathContent) arrayList.get(i2)).b(list, list2);
            i2++;
        }
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        Path path = this.f21840c;
        path.reset();
        MergePaths mergePaths = this.f21841e;
        if (!mergePaths.f22137b) {
            int i2 = AnonymousClass1.f21842a[mergePaths.f22136a.ordinal()];
            if (i2 == 1) {
                int i3 = 0;
                while (true) {
                    ArrayList arrayList = this.d;
                    if (i3 >= arrayList.size()) {
                        break;
                    }
                    path.addPath(((PathContent) arrayList.get(i3)).getPath());
                    i3++;
                }
            } else {
                if (i2 == 2) {
                    a(Path.Op.UNION);
                    return path;
                }
                if (i2 == 3) {
                    a(Path.Op.REVERSE_DIFFERENCE);
                    return path;
                }
                if (i2 == 4) {
                    a(Path.Op.INTERSECT);
                    return path;
                }
                if (i2 == 5) {
                    a(Path.Op.XOR);
                    return path;
                }
            }
        }
        return path;
    }

    @Override // com.airbnb.lottie.animation.content.GreedyContent
    public final void h(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            Content content = (Content) listIterator.previous();
            if (content instanceof PathContent) {
                this.d.add((PathContent) content);
                listIterator.remove();
            }
        }
    }
}
