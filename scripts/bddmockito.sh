#!/bin/sh

function migrate {
	sed -i.bak \
	-e 's|import static org.mockito.Mockito.when;|import static org.mockito.BDDMockito.given;|g'  \
	-e 's|import org.mockito.runners.MockitoJUnitRunner;|import org.mockito.junit.MockitoJUnitRunner;|g'  \
	-e 's|import org.mockito.Matchers;|import static org.mockito.ArgumentMatchers.*;|g'  \
	-e 's|import static org.mockito.Mockito.doThrow;|import static org.mockito.BDDMockito.willThrow;|g'  \
	-e 's|Matchers.any(|any(|g'  \
	-e 's|doThrow(|willThrow(|g'  \
	-e 's|||g'  \
	-e 's|Mockito.when(|when(|g'  \
	-e 's|when(|given(|g'  \
	-e 's|.thenReturn(|.willReturn(|g' \
	-e 's|.thenThrow(|.willThrow(|g' \
	$1
}

for folder in `find . -type d | grep src\/test\/java`; do
	for file in `find $folder -type f -name '*.java'`; do
		migrate $file
	done
done

