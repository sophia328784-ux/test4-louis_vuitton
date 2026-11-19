package org.bouncycastle.tsp.ers;

import defpackage.md;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ERSDirectoryDataGroup extends ERSDataGroup {
    public ERSDirectoryDataGroup(File file) throws FileNotFoundException {
        super(buildGroup(file));
    }

    private static List<ERSData> buildGroup(File file) throws FileNotFoundException {
        ERSCachingData eRSFileData;
        if (!file.isDirectory()) {
            md.n("file reference does not refer to directory");
            return null;
        }
        File[] fileArrListFiles = file.listFiles();
        ArrayList arrayList = new ArrayList(fileArrListFiles.length);
        for (int i2 = 0; i2 != fileArrListFiles.length; i2++) {
            if (fileArrListFiles[i2].isDirectory()) {
                if (fileArrListFiles[i2].listFiles().length != 0) {
                    eRSFileData = new ERSDirectoryDataGroup(fileArrListFiles[i2]);
                }
            } else {
                eRSFileData = new ERSFileData(fileArrListFiles[i2]);
            }
            arrayList.add(eRSFileData);
        }
        return arrayList;
    }

    public List<ERSFileData> getFiles() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 != this.dataObjects.size(); i2++) {
            if (this.dataObjects.get(i2) instanceof ERSFileData) {
                arrayList.add((ERSFileData) this.dataObjects.get(i2));
            }
        }
        return arrayList;
    }

    public List<ERSDirectoryDataGroup> getSubdirectories() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 != this.dataObjects.size(); i2++) {
            if (this.dataObjects.get(i2) instanceof ERSDirectoryDataGroup) {
                arrayList.add((ERSDirectoryDataGroup) this.dataObjects.get(i2));
            }
        }
        return arrayList;
    }
}
