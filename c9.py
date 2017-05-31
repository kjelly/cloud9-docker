#!/usr/bin/env python
import argparse
import os
import os.path


def main():
    parser = argparse.ArgumentParser(description='c9 launcher')
    parser.add_argument('workspace', help='workspace')
    parser.add_argument('-p', '--port', default=7777, help='port')

    args = parser.parse_args()
    path = os.path.abspath(args.workspace)
    os.system('''docker run -it -v {path}:/workspace -p {port}:7777 '''
              '''-v /home/$USER/.c9:/root/.c9 c9'''.format(
                 path=path, port=args.port))


if __name__ == '__main__':
    main()
